import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/core/helper/number_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/room_card.dart';
import 'package:rimbun_cicio_kost/core/presenter/favorite/favorite_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/home_page/home_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FavoriteProvider>().getFavorite();

      // Sesuaikan dengan function di HomeProvider kamu.
      // Misalnya kalau function kamu namanya fetchRooms(), getRooms(), atau indexRoom()
      context.read<HomeProvider>().fetchRooms();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FavoritePage.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),

            Expanded(
              child: Consumer2<FavoriteProvider, HomeProvider>(
                builder: (context, databaseProvider, homeProvider, child) {
                  final favoriteIds = databaseProvider.favoriteRoomIds;

                  // Sesuaikan nama state ini dengan HomeProvider kamu.
                  final roomState = homeProvider.state;

                  return switch (roomState) {
                    DataStateLoading() => const Center(
                      child: CircularProgressIndicator(),
                    ),

                    DataStateFailed(:final message) => _buildErrorState(
                      message: message,
                      onRetry: () {
                        context.read<FavoriteProvider>().getFavorite();
                        context.read<HomeProvider>().fetchRooms();
                      },
                    ),

                    DataStateSuccess(:final data) => Builder(
                      builder: (context) {
                        final rooms = data.data.rooms ?? [];

                        final favoriteRooms = rooms.where((room) {
                          return favoriteIds.contains(room.id.toString());
                        }).toList();

                        if (favoriteRooms.isEmpty) {
                          return _buildEmptyState();
                        }

                        return RefreshIndicator(
                          onRefresh: () async {
                            await context
                                .read<FavoriteProvider>()
                                .getFavorite();

                            await context
                                .read<HomeProvider>()
                                .fetchRooms();
                          },
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final isTablet = constraints.maxWidth >= 700;

                              if (isTablet) {
                                return GridView.builder(
                                  physics:
                                  const AlwaysScrollableScrollPhysics(),
                                  padding: const EdgeInsets.all(16),
                                  itemCount: favoriteRooms.length,
                                  gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 14,
                                    crossAxisSpacing: 14,
                                    childAspectRatio: 3.2,
                                  ),
                                  itemBuilder: (context, index) {
                                    final room = favoriteRooms[index];
                                    return _buildRoomCard(room);
                                  },
                                );
                              }

                              return ListView.separated(
                                physics:
                                const AlwaysScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(16),
                                itemCount: favoriteRooms.length,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 14);
                                },
                                itemBuilder: (context, index) {
                                  final room = favoriteRooms[index];
                                  return _buildRoomCard(room);
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),

                    _ => const SizedBox.shrink(),
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoomCard(dynamic room) {
    final imageUrl = room.images.isNotEmpty
        ? '${room.thumbnail}/${room.images.first.image}'
        : 'https://via.placeholder.com/400';

    return RoomCard(
      id: room.id.toString(),
      roomName: room.title,
      price: 'Rp${NumberHelper.formatIdr(room.pricePerMonth)}/bulan',
      statusName: room.statusName,
      imageUrl: imageUrl,
      facilities: room.facilities,
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
      decoration: const BoxDecoration(
        color: FavoritePage.backgroundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 22,
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Simpan Kamar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1F1F1F),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Daftar kamar yang kamu simpan',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF777777),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return RefreshIndicator(
      onRefresh: () async {
        await context.read<FavoriteProvider>().getFavorite();
        await context.read<HomeProvider>().fetchRooms();
      },
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 120),
          Container(
            width: 86,
            height: 86,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: const Icon(
              Icons.favorite_border,
              size: 42,
              color: FavoritePage.primaryGreen,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Belum ada kamar yang di Simpan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Klik icon love pada detail kamar untuk menyimpan kamar kesukaan kamu.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF777777),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState({
    required String message,
    required VoidCallback onRetry,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: 48,
              color: Colors.red,
            ),
            const SizedBox(height: 12),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF555555),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: FavoritePage.primaryGreen,
                foregroundColor: Colors.white,
              ),
              child: const Text('Coba Lagi'),
            ),
          ],
        ),
      ),
    );
  }
}