import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/loader_animation.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/presenter/home_page/home_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';
import 'dart:math' as math;

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
    ).animate(CurvedAnimation(parent: loaderController, curve: Curves.easeIn));
    loaderController.repeat(reverse: true);
    Future.microtask(
      () => Provider.of<HomeProvider>(context, listen: false).fetchRooms(),
    );
    authProvider.checkLogin();
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
              await provider.logout();
              DialogHelper.goNamed(
                context: context,
                nameRoutes: RouteNames.login,
              );
            },
          );
        },
        child: const Icon(Icons.logout),
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          final state = provider.state;
          return switch (state) {
            DataStateInitial() ||
            DataStateLoading() => Center(child: RGBProgressIndicator()),
            DataStateFailed(:final message) => Center(child: Text(message)),
            DataStateSuccess() => _onSuccess(provider),
          };
        },
      ),
    );
  }

  Widget _onSuccess(HomeProvider provider) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian fix di atas, tidak ikut scroll
          _buildHeader(),
          const SizedBox(height: 16),
          _buildSearch(),
          const SizedBox(height: 16),
          _buildSectionTitle(),
          const SizedBox(height: 12),

          // Bagian scrollable
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => _homeProvider.refreshRooms(),
              child: ListView.builder(
                controller: provider.scrollController,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                itemCount:
                    provider.rooms.length +
                    (provider.pageItems == null ? 0 : 1),
                itemBuilder: (context, index) {
                  if (index == provider.rooms.length &&
                      provider.pageItems != null) {
                    return Center(
                      child: AnimatedBuilder(
                        animation: loaderAnimation,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle:
                                loaderController.status ==
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
                    );
                  }
                  final rooms = provider.rooms[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: RoomCard(
                      roomName: rooms.title,
                      price: 'Rp${rooms.pricePerMonth}/bulan',
                      imageUrl:
                          rooms.images.isNotEmpty
                              ? rooms.images[0].image
                              : 'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=400',
                    ),
                  );

                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cicio Rimbun Kos',
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
                      'Yogyakarta, Daerah Istimewa Yogyakarta',
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
    );
  }

  Widget _buildSearch() {
    return Row(
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
            child: const Row(
              children: [
                Icon(Icons.search, size: 20, color: Color(0xFF8A8A8A)),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Cari kamar, fasilitas, atau lokasi...',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF8A8A8A),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE5E5E5)),
          ),
          child: const Icon(Icons.tune, color: HomePage.primaryGreen, size: 22),
        ),
      ],
    );
  }

  Widget _buildSectionTitle() {
    return const Row(
      children: [
        Expanded(
          child: Text(
            'Kamar Tersedia',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color(0xFF222222),
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Text(
          'Lihat semua',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: HomePage.primaryGreen,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
