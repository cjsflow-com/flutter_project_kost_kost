import 'package:flutter/material.dart';

import '../component/widgets/promo_banner.dart';
import '../component/widgets/room_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
          children: [
            _buildHeader(),

            const SizedBox(height: 16),

            _buildSearch(),

            const SizedBox(height: 16),

            // const PromoBanner(),

            const SizedBox(height: 18),

            _buildSectionTitle(),

            const SizedBox(height: 12),

            const RoomCard(
              roomName: 'Kamar A01',
              price: 'Rp 1.200.000/bulan',
              imageUrl:
              'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=400',
            ),

            const SizedBox(height: 12),

            const RoomCard(
              roomName: 'Kamar B02',
              price: 'Rp 1.350.000/bulan',
              imageUrl:
              'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=400',
            ),

            const SizedBox(height: 12),

            const RoomCard(
              roomName: 'Kamar C03',
              price: 'Rp 1.100.000/bulan',
              imageUrl:
              'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?w=400',
            ),
          ],
        ),
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
                'Rimbun Kos',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: primaryGreen,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 15,
                    color: primaryGreen,
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
              border: Border.all(
                color: const Color(0xFFE5E5E5),
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  size: 20,
                  color: Color(0xFF8A8A8A),
                ),
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
            border: Border.all(
              color: const Color(0xFFE5E5E5),
            ),
          ),
          child: const Icon(
            Icons.tune,
            color: primaryGreen,
            size: 22,
          ),
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
            color: primaryGreen,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}