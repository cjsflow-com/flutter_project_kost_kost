import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/facility_box.dart';

class DetailKostPage extends StatelessWidget {
  const DetailKostPage({
    super.key,
    this.roomName = 'Kamar A01',
    this.price = 'Rp 1.200.000/bulan',
    this.imageUrl =
    'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=900',
  });

  final String roomName;
  final String price;
  final String imageUrl;

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildImageHeader(context),
                  _buildContent(),
                ],
              ),
            ),
            _buildBottomButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildImageHeader(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
          child: Image.network(
            imageUrl,
            height: 235,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 235,
                width: double.infinity,
                color: const Color(0xFFE7F1E7),
                child: const Icon(
                  Icons.bed,
                  size: 80,
                  color: primaryGreen,
                ),
              );
            },
          ),
        ),

        Positioned(
          top: 14,
          left: 14,
          child: _CircleIconButton(
            icon: Icons.arrow_back,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),

        Positioned(
          top: 14,
          right: 14,
          child: _CircleIconButton(
            icon: Icons.favorite_border,
            onTap: () {},
          ),
        ),

        Positioned(
          bottom: 14,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _Dot(isActive: false),
              _Dot(isActive: false),
              _Dot(isActive: true),
              _Dot(isActive: false),
              _Dot(isActive: false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      transform: Matrix4.translationValues(0, -8, 0),
      padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
      decoration: const BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),

          const SizedBox(height: 6),

          Text(
            price,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: primaryGreen,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Kamar nyaman dan bersih di lantai 1 dengan\npencahayaan alami dan sirkulasi udara baik.',
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FacilityBox(
                  icon: Icons.king_bed_outlined,
                  label: 'Kasur',
                ),
                FacilityBox(
                  icon: Icons.door_front_door_outlined,
                  label: 'Lemari',
                ),
                FacilityBox(
                  icon: Icons.tv_outlined,
                  label: 'AC',
                ),
                FacilityBox(
                  icon: Icons.wifi,
                  label: 'WiFi',
                ),
                FacilityBox(
                  icon: Icons.shower_outlined,
                  label: 'Kamar Mandi\nDalam',
                ),
              ],
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
                FacilityBox(
                  icon: Icons.videocam_outlined,
                  label: 'CCTV',
                ),
                FacilityBox(
                  icon: Icons.mosque_outlined,
                  label: 'Mushola',
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
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
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F5E9),
            borderRadius: BorderRadius.circular(999),
          ),
          child: const Text(
            'Tersedia',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              color: primaryGreen,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 24),
      decoration: const BoxDecoration(
        color: backgroundColor,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
             DialogHelper.pushNamed(context: context, nameRoutes: RouteNames.login);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryGreen,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Reservasi Sekarang',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _CircleIconButton({
    required this.icon,
    required this.onTap,
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
          child: Icon(
            icon,
            size: 21,
            color: const Color(0xFF333333),
          ),
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final bool isActive;

  const _Dot({
    required this.isActive,
  });

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