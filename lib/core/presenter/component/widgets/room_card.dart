import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';

class RoomCard extends StatelessWidget {
  final String roomName;
  final String price;
  final String imageUrl;

  const RoomCard({
    super.key,
    required this.roomName,
    required this.price,
    required this.imageUrl,
  });

  static const Color primaryGreen = Color(0xFF0F5B2B);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: (){
        DialogHelper.pushNamed(context: context, nameRoutes: RouteNames.detail_page);
      },
      child: Container(
        height: 118,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 14,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 98,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100,
                    height: 98,
                    color: const Color(0xFFEAF4EA),
                    child: const Icon(
                      Icons.bed,
                      color: primaryGreen,
                      size: 38,
                    ),
                  );
                },
              ),
            ),
      
            const SizedBox(width: 12),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          roomName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF222222),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F5E9),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: const Text(
                          'Tersedia',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: primaryGreen,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
      
                  const SizedBox(height: 5),
      
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: primaryGreen,
                      decoration: TextDecoration.none,
                    ),
                  ),
      
                  const SizedBox(height: 12),
      
                  const Wrap(
                    spacing: 10,
                    runSpacing: 6,
                    children: [
                      _FacilityItem(
                        icon: Icons.ac_unit,
                        label: 'AC',
                      ),
                      _FacilityItem(
                        icon: Icons.wifi,
                        label: 'WiFi',
                      ),
                      _FacilityItem(
                        icon: Icons.shower_outlined,
                        label: 'K. Mandi Dalam',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FacilityItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FacilityItem({
    required this.icon,
    required this.label,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 14,
          color: Color(0xFF777777),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            color: Color(0xFF666666),
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}