import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color softGreen = Color(0xFFEFF7EF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softGreen,
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 430),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 130,
                  left: -40,
                  child: _Blob(
                    width: 150,
                    height: 90,
                    color: const Color(0xFFE3F2E8),
                  ),
                ),
                Positioned(
                  top: 160,
                  right: -30,
                  child: _Blob(
                    width: 130,
                    height: 80,
                    color: const Color(0xFFE3F2E8),
                  ),
                ),

                Column(
                  children: [
                    const SizedBox(height: 42),

                    // Logo + Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _LogoMark(),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rimbun',
                              style: TextStyle(
                                fontSize: 28,
                                height: 0.9,
                                fontWeight: FontWeight.w800,
                                color: primaryGreen,
                              ),
                            ),
                            Text(
                              'Kos',
                              style: TextStyle(
                                fontSize: 28,
                                height: 0.9,
                                fontWeight: FontWeight.w800,
                                color: primaryGreen,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    const Text(
                      'Nyaman tinggal, tenang setiap hari.',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F1F1F),
                      ),
                    ),

                    const SizedBox(height: 32),

                    Expanded(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned(
                            top: 10,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 300,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.apartment,
                                size: 210,
                                color: Color(0xFF0F5B2B),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 210,
                            left: 40,
                            child: Icon(
                              Icons.park,
                              size: 70,
                              color: primaryGreen.withOpacity(0.45),
                            ),
                          ),

                          Positioned(
                            top: 220,
                            right: 35,
                            child: Icon(
                              Icons.forest,
                              size: 78,
                              color: primaryGreen.withOpacity(0.45),
                            ),
                          ),

                          // Card bottom
                          Positioned(
                            left: 26,
                            right: 26,
                            bottom: 20,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(
                                18,
                                20,
                                18,
                                24,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    blurRadius: 20,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        DialogHelper.pushNamed(context: context, nameRoutes: RouteNames.home_page);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryGreen,
                                        foregroundColor: Colors.white,
                                        elevation: 2,
                                        shadowColor: Colors.black26,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            const Text(
                                              "Lihat Kamar",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const Positioned(
                                              right: 16,
                                              child: Icon(
                                                Icons.arrow_forward,
                                                size: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 14),

                                  SizedBox(
                                    width: double.infinity,
                                    height: 45,
                                    child: OutlinedButton(
                                      onPressed: () {
                                        // TODO: pindah ke halaman cek reservasi
                                      },
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: primaryGreen,
                                        side: const BorderSide(
                                          color: primaryGreen,
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Cek Reservasi',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 18),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      height: 58,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: CustomPaint(
              size: const Size(60, 48),
              painter: _LeafHousePainter(),
            ),
          ),
          const Positioned(
            top: 22,
            child: Icon(Icons.home, size: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _LeafHousePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final greenPaint =
        Paint()
          ..color = WelcomePage.primaryGreen
          ..style = PaintingStyle.fill;

    final lightPaint =
        Paint()
          ..color = const Color(0xFFD9EBDD)
          ..style = PaintingStyle.fill;

    final roof =
        Path()
          ..moveTo(size.width / 2, 0)
          ..lineTo(size.width, size.height * 0.45)
          ..lineTo(size.width * 0.82, size.height * 0.45)
          ..lineTo(size.width / 2, size.height * 0.16)
          ..lineTo(size.width * 0.18, size.height * 0.45)
          ..lineTo(0, size.height * 0.45)
          ..close();

    canvas.drawPath(roof, greenPaint);

    final leftLeaf =
        Path()
          ..moveTo(size.width * 0.08, size.height * 0.55)
          ..quadraticBezierTo(
            size.width * 0.22,
            size.height * 0.25,
            size.width * 0.48,
            size.height * 0.48,
          )
          ..quadraticBezierTo(
            size.width * 0.27,
            size.height * 0.9,
            size.width * 0.08,
            size.height * 0.55,
          )
          ..close();

    final rightLeaf =
        Path()
          ..moveTo(size.width * 0.92, size.height * 0.55)
          ..quadraticBezierTo(
            size.width * 0.78,
            size.height * 0.25,
            size.width * 0.52,
            size.height * 0.48,
          )
          ..quadraticBezierTo(
            size.width * 0.73,
            size.height * 0.9,
            size.width * 0.92,
            size.height * 0.55,
          )
          ..close();

    canvas.drawPath(leftLeaf, greenPaint);
    canvas.drawPath(rightLeaf, greenPaint);

    final body = RRect.fromRectAndRadius(
      Rect.fromLTWH(
        size.width * 0.28,
        size.height * 0.42,
        size.width * 0.44,
        size.height * 0.35,
      ),
      const Radius.circular(4),
    );

    canvas.drawRRect(body, lightPaint);

    final door = Rect.fromLTWH(
      size.width * 0.46,
      size.height * 0.56,
      size.width * 0.08,
      size.height * 0.21,
    );

    canvas.drawRect(door, greenPaint);

    final windowPaint =
        Paint()
          ..color = WelcomePage.primaryGreen
          ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.36, size.height * 0.52, 4, 4),
      windowPaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.58, size.height * 0.52, 4, 4),
      windowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _Blob extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const _Blob({required this.width, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(999),
      ),
    );
  }
}
