import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final Widget icon;
  final String label;

  const FacilityItem({
    super.key,
    required this.icon,
    required this.label,
  });

  static const Color primaryGreen = Color(0xFF0F5B2B);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F8F3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFE4EFE4),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         icon,
          const SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 10,
              height: 1.15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D2D2D),
            ),
          ),
        ],
      ),
    );
  }
}