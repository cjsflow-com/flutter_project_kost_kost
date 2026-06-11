import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/detail_room.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/helper/number_helper.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/facility_box.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/presenter/detail/detail_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/favorite/favorite_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class DetailKostPage extends StatefulWidget {
  final String id;

  const DetailKostPage({super.key, required this.id});

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  @override
  State<DetailKostPage> createState() => _DetailKostPageState();
}

class _DetailKostPageState extends State<DetailKostPage> {
  int _currentImageIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<DetailProvider>().fetchDetailRoom(widget.id);
      context.read<FavoriteProvider>().getFavorite();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DetailKostPage.backgroundColor,
      body: Consumer<DetailProvider>(
        builder: (context, provider, _) {
          final state = provider.detailRoom;
          return switch (state) {
            DataStateInitial() ||
            DataStateLoading() => Center(child: RGBProgressIndicator()),
            DataStateFailed(:final message) => Center(
              child: Text(message, textAlign: TextAlign.center),
            ),
            DataStateSuccess() => _onSuccess(state.data.data),
          };
        },
      ),
    );
  }

  Widget _onSuccess(Room room) {
    final imageUrls =
        (room.images ?? [])
            .map((img) => "${room.thumbnail}/${img.image}")
            .toList();

    // Fallback kalau kosong
    final displayImages =
        imageUrls.isNotEmpty ? imageUrls : ["https://via.placeholder.com/400"];
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildImageHeader(context, displayImages, room.id),
                _buildContent(room),
              ],
            ),
          ),
          _buildBottomButton(context, room),
        ],
      ),
    );
  }

  Widget _buildImageHeader(
    BuildContext context,
    List<String> images,
    String id,
  ) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
          child: SizedBox(
            height: 235, // wajib beri fixed height
            width: double.infinity,
            child: PageView.builder(
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  _currentImageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.network(
                  images[index],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFE7F1E7),
                      child: const Icon(
                        Icons.bed,
                        size: 80,
                        color: DetailKostPage.primaryGreen,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 14,
          left: 14,
          child: _CircleIconButton(
            icon: Icons.arrow_back,
            onTap: () {
              DialogHelper.goNamed(
                context: context,
                nameRoutes: RouteNames.home_page,
              );
            },
            iconColor: Color(0xFF333333),
          ),
        ),
        Positioned(
          top: 14,
          right: 14,
          child: Consumer<FavoriteProvider>(
            builder: (context, favoriteProvider, child) {
              final isFavorite = favoriteProvider.isFavorite(id);
              return _CircleIconButton(
                icon: isFavorite ? Icons.favorite : Icons.favorite_border,
                iconColor: isFavorite ? Colors.red : const Color(0xFF333333),
                onTap: () async {
                  await context.read<FavoriteProvider>().toggleFavorite(id);

                  if (!context.mounted) return;

                  final newStatus = context.read<FavoriteProvider>().isFavorite(
                    id,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        newStatus
                            ? 'Kamar ditambahkan ke favorit'
                            : 'Kamar dihapus dari favorit',
                      ),
                      backgroundColor: newStatus ? Colors.green : Colors.red,
                    ),
                  );
                },
              );
            },
          ),
        ),
        Positioned(
          bottom: 14,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentImageIndex == index ? 10 : 8,
                height: _currentImageIndex == index ? 10 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentImageIndex == index
                          ? Colors.white
                          : Colors.white54,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(Room room) {
    return Container(
      transform: Matrix4.translationValues(0, -8, 0),
      padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
      decoration: const BoxDecoration(
        color: DetailKostPage.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(room.title, room.statusName),

          const SizedBox(height: 6),

          Text(
            "Rp${NumberHelper.formatIdr(room.pricePerMonth)}/bulan",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: DetailKostPage.primaryGreen,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            room.description,
            style: TextStyle(
              fontSize: 12,
              height: 1.45,
              fontWeight: FontWeight.w500,
              color: Color(0xFF363636),
            ),
          ),

          const SizedBox(height: 22),

          const Text(
            'Fasilitas Kamar',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w900,
              color: Color(0xFF1F1F1F),
            ),
          ),

          const SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  room.facilities
                      .map((f) => FacilityBox(icon: Icons.wifi, label: f.name))
                      .toList(),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Fasilitas Umum',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w900,
              color: Color(0xFF1F1F1F),
            ),
          ),

          const SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FacilityBox(
                  icon: Icons.local_parking_outlined,
                  label: 'Parkiran',
                ),
                FacilityBox(
                  icon: Icons.local_laundry_service_outlined,
                  label: 'Dapur\nBersama',
                ),
                FacilityBox(icon: Icons.videocam_outlined, label: 'CCTV'),
                FacilityBox(icon: Icons.mosque_outlined, label: 'Mushola'),
              ],
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTitleRow(String roomName, String roomStatus) {
    return Row(
      children: [
        Expanded(
          child: Text(
            roomName,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Color(0xFF161616),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F5E9),
            borderRadius: BorderRadius.circular(999),
          ),
          child: Text(
            roomStatus,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              color: DetailKostPage.primaryGreen,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomButton(BuildContext context, Room rooms) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 24),
      decoration: const BoxDecoration(color: DetailKostPage.backgroundColor),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            final dataSend = {
              'title': rooms.title,
              'status': rooms.statusName,
              'price': rooms.pricePerMonth,
              'images':
                  rooms.images.map((img) => {'image': img.image}).toList(),
              'thumbnail': rooms.thumbnail,
              'roomId': int.parse(rooms.id),
            };
            context.pushNamed(
              RouteNames.form_reservation_page,
              extra: dataSend,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: DetailKostPage.primaryGreen,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Reservasi Sekarang',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;

  const _CircleIconButton({
    required this.icon,
    required this.onTap,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.95),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 38,
          height: 38,
          child: Icon(icon, size: 21, color: iconColor),
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final bool isActive;

  const _Dot({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 8 : 6,
      height: isActive ? 8 : 6,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.55),
        shape: BoxShape.circle,
      ),
    );
  }
}
