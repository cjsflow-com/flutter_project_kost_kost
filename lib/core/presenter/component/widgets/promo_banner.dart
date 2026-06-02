import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  static const Color primaryGreen = Color(0xFF0F5B2B);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: primaryGreen,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 0,
            top: 0,
            child: Text(
              'Promo Spesial Bulan Ini!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const Positioned(
            left: 0,
            top: 30,
            child: Text(
              'Diskon 10% untuk reservasi\nminimal 3 bulan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                height: 1.35,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Positioned(
            right: -2,
            top: 4,
            child: Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFFE9F8DC),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: const Text(
                '10%\nOFF',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primaryGreen,
                  fontSize: 17,
                  height: 1,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}