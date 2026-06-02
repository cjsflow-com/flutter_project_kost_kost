import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color softGreen = Color(0xFFF4FAF4);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordHidden = true;
  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void handleLogin() {
    // TODO: nanti sambungkan ke API login Laravel kamu

    DialogHelper.goNamed(context: context, nameRoutes: RouteNames.home_page);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;

    return Scaffold(
      backgroundColor: softGreen,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isTablet ? 48 : 22,
              vertical: 24,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 460,
              ),
              child: Column(
                children: [
                  _buildLogo(),

                  const SizedBox(height: 26),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(isTablet ? 32 : 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 24,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Masuk Akun',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF162016),
                          ),
                        ),

                        const SizedBox(height: 6),

                        const Text(
                          'Silakan masuk untuk melihat reservasi dan data kos kamu.',
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF747474),
                          ),
                        ),

                        const SizedBox(height: 28),

                        _buildLabel('Email'),

                        const SizedBox(height: 8),

                        _buildTextField(
                          controller: emailController,
                          hintText: 'Masukkan email kamu',
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icons.email_outlined,
                        ),

                        const SizedBox(height: 18),

                        _buildLabel('Password'),

                        const SizedBox(height: 8),

                        _buildTextField(
                          controller: passwordController,
                          hintText: 'Masukkan password',
                          obscureText: isPasswordHidden,
                          prefixIcon: Icons.lock_outline,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                            icon: Icon(
                              isPasswordHidden
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 20,
                              color: const Color(0xFF777777),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        Row(
                          children: [
                            SizedBox(
                              width: 22,
                              height: 22,
                              child: Checkbox(
                                value: rememberMe,
                                activeColor: primaryGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFFD2D2D2),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value ?? false;
                                  });
                                },
                              ),
                            ),

                            const SizedBox(width: 8),

                            const Text(
                              'Ingat saya',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF555555),
                              ),
                            ),

                            const Spacer(),

                            GestureDetector(
                              onTap: () {
                                // TODO: forgot password
                              },
                              child: const Text(
                                'Lupa password?',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: primaryGreen,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 26),

                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: handleLogin,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryGreen,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: const Text(
                              'Masuk',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 22),

                        Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Color(0xFFE6E6E6),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'atau',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF9A9A9A),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color(0xFFE6E6E6),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 22),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {
                              // TODO: arahkan ke register
                              // context.push('/register');
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: primaryGreen,
                              side: const BorderSide(
                                color: primaryGreen,
                                width: 1.2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: const Text(
                              'Buat Akun Baru',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 22),

                  GestureDetector(
                    onTap: () {
                      DialogHelper.goNamed(context: context, nameRoutes: RouteNames.home_page);
                    },
                    child: const Text(
                      'Lewati dulu dan lihat kamar',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: primaryGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Column(
      children: [
        Container(
          width: 76,
          height: 76,
          decoration: BoxDecoration(
            color: primaryGreen,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: primaryGreen.withOpacity(0.25),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Icon(
            Icons.home_work_rounded,
            color: Colors.white,
            size: 38,
          ),
        ),

        const SizedBox(height: 14),

        const Text(
          'Rimbun Kos',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: primaryGreen,
          ),
        ),

        const SizedBox(height: 4),

        const Text(
          'Nyaman tinggal, tenang setiap hari.',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xFF6A6A6A),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w800,
        color: Color(0xFF2A2A2A),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData prefixIcon,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorColor: primaryGreen,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF222222),
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Color(0xFFA0A0A0),
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 21,
          color: primaryGreen,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xFFF7FAF7),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFE4EAE4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: primaryGreen,
            width: 1.4,
          ),
        ),
      ),
    );
  }
}