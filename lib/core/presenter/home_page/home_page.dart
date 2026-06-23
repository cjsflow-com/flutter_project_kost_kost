import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/helper/number_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/loader_animation.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/presenter/home_page/home_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

import '../component/widgets/room_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController loaderController;
  late Animation<double> loaderAnimation;
  late HomeProvider _homeProvider;

  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();

    final authProvider = context.read<AuthProvider>();

    _homeProvider = context.read<HomeProvider>();
    _homeProvider.listener();

    loaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    loaderAnimation = Tween(
      begin: 1.0,
      end: 1.4,
    ).animate(
      CurvedAnimation(
        parent: loaderController,
        curve: Curves.easeIn,
      ),
    );

    loaderController.repeat(reverse: true);

    Future.microtask(() {
      context.read<HomeProvider>().fetchRooms(reset: true);
      authProvider.checkLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomePage.backgroundColor,
      floatingActionButton: Consumer<AuthProvider>(
        builder: (context, provider, child) {
          if (!provider.isLoggedIn) return const SizedBox();

          return FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () async {
              final isLogout = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Konfirmasi'),
                    content: const Text('Apakah anda ingin keluar ?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text('Tidak'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text('Ya'),
                      ),
                    ],
                  );
                },
              );

              if (isLogout == true) {
                await provider.logout();

                if (!context.mounted) return;

                DialogHelper.goNamed(
                  context: context,
                  nameRoutes: RouteNames.welcome,
                );
              }
            },
            child: const Icon(Icons.logout),
          );
        },
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          final state = provider.state;

          return _buildHomeContent(
            provider: provider,
            state: state,
          );
        },
      ),
    );
  }

  Widget _buildHomeContent({
    required HomeProvider provider,
    required DataState<RoomResponse> state,
  }) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),

          const SizedBox(height: 16),

          _buildSearch(provider),

          const SizedBox(height: 16),

          _buildSectionTitle(),

          const SizedBox(height: 12),

          Expanded(
            child: _buildListContent(
              provider: provider,
              state: state,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListContent({
    required HomeProvider provider,
    required DataState<RoomResponse> state,
  }) {
    return switch (state) {
      DataStateInitial() || DataStateLoading() => Center(
        child: RGBProgressIndicator(),
      ),

      DataStateFailed(:final message) => Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            message,
            textAlign: TextAlign.center,
          ),
        ),
      ),

      DataStateSuccess() => provider.rooms.isEmpty
          ? _buildEmptyState()
          : RefreshIndicator(
        onRefresh: () => _homeProvider.refreshRooms(),
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: provider.scrollController,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
          itemCount: provider.rooms.length +
              (provider.pageItems == null ? 0 : 1),
          itemBuilder: (context, index) {
            if (index == provider.rooms.length &&
                provider.pageItems != null) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Center(
                  child: AnimatedBuilder(
                    animation: loaderAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: loaderController.status ==
                            AnimationStatus.forward
                            ? (math.pi * 2) * loaderController.value
                            : -(math.pi * 2) * loaderController.value,
                        child: CustomPaint(
                          foregroundPainter: LoaderAnimation(
                            radiusRatio: loaderAnimation.value,
                          ),
                          size: const Size(50, 50),
                        ),
                      );
                    },
                  ),
                ),
              );
            }

            final rooms = provider.rooms[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: RoomCard(
                id: rooms.id,
                statusName: rooms.statusName,
                roomName: rooms.title,
                price:
                '${NumberHelper.formatIdr(rooms.pricePerMonth)}/bulan',
                imageUrl: rooms.images.isNotEmpty
                    ? '${rooms.thumbnail}/${rooms.images[0].image}'
                    : 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=400',
                facilities: rooms.facilities,
              ),
            );
          },
        ),
      ),
    };
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rimbun Cicio Kost',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: HomePage.primaryGreen,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: HomePage.primaryGreen,
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Medan',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF606060),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.notifications_none,
              color: Color(0xFF222222),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearch(HomeProvider provider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE5E5E5)),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 20,
                    color: Color(0xFF8A8A8A),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Cari kamar ...',
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF333333),
                        decoration: TextDecoration.none,
                      ),
                      onChanged: (value) {
                        setState(() {});

                        _debounce?.cancel();
                        _debounce = Timer(
                          const Duration(milliseconds: 500),
                              () {
                            context.read<HomeProvider>().searchRooms(value);
                          },
                        );
                      },
                    ),
                  ),
                  if (_searchController.text.isNotEmpty)
                    InkWell(
                      onTap: () {
                        _searchController.clear();
                        setState(() {});
                        context.read<HomeProvider>().searchRooms('');
                      },
                      child: const Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          InkWell(
            onTap: () {
              _showSortBottomSheet(context);
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE5E5E5)),
              ),
              child: const Icon(
                Icons.tune,
                color: HomePage.primaryGreen,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        'Kamar Tersedia',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Color(0xFF222222),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return RefreshIndicator(
      onRefresh: () => _homeProvider.refreshRooms(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(24),
        children: const [
          SizedBox(height: 140),
          Icon(
            Icons.search_off,
            size: 58,
            color: Colors.grey,
          ),
          SizedBox(height: 14),
          Text(
            'Kamar tidak ditemukan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: Color(0xFF222222),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Coba gunakan kata kunci lain atau ubah filter pencarian.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF777777),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  void _showSortBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        final provider = context.read<HomeProvider>();

        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Urutkan Kamar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF222222),
                ),
              ),

              const SizedBox(height: 12),

              _buildSortItem(
                title: 'Terbaru',
                subtitle: 'Kamar terbaru ditampilkan lebih dulu',
                icon: Icons.schedule,
                onTap: () {
                  Navigator.pop(context);
                  provider.changeSort(
                    sortByValue: 'created_at',
                    sortDirValue: 'desc',
                  );
                },
              ),

              _buildSortItem(
                title: 'Terlama',
                subtitle: 'Kamar lama ditampilkan lebih dulu',
                icon: Icons.history,
                onTap: () {
                  Navigator.pop(context);
                  provider.changeSort(
                    sortByValue: 'created_at',
                    sortDirValue: 'asc',
                  );
                },
              ),

              _buildSortItem(
                title: 'Harga Termurah',
                subtitle: 'Urut dari harga paling murah',
                icon: Icons.arrow_upward,
                onTap: () {
                  Navigator.pop(context);
                  provider.changeSort(
                    sortByValue: 'price_per_month',
                    sortDirValue: 'asc',
                  );
                },
              ),

              _buildSortItem(
                title: 'Harga Termahal',
                subtitle: 'Urut dari harga paling mahal',
                icon: Icons.arrow_downward,
                onTap: () {
                  Navigator.pop(context);
                  provider.changeSort(
                    sortByValue: 'price_per_month',
                    sortDirValue: 'desc',
                  );
                },
              ),

              _buildSortItem(
                title: 'Nama A-Z',
                subtitle: 'Urut berdasarkan nama kamar',
                icon: Icons.sort_by_alpha,
                onTap: () {
                  Navigator.pop(context);
                  provider.changeSort(
                    sortByValue: 'title',
                    sortDirValue: 'asc',
                  );
                },
              ),

              _buildSortItem(
                title: 'Nama Z-A',
                subtitle: 'Urut nama kamar secara terbalik',
                icon: Icons.sort_by_alpha,
                onTap: () {
                  Navigator.pop(context);
                  provider.changeSort(
                    sortByValue: 'title',
                    sortDirValue: 'desc',
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSortItem({
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: HomePage.primaryGreen,
                size: 20,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF222222),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    loaderController.dispose();
    super.dispose();
  }
}