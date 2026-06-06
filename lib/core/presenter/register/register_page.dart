import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color softGreen = Color(0xFFF4FAF4);

  void handleRegister(AuthProvider auth) async {
    await auth.register();
    final result = auth.state;
    switch (result) {
      case DataStateSuccess(:var data?):
        auth.emailController.clear();
        auth.nameController.clear();
        auth.passwordController.clear();
        auth.phoneController.clear();
        DialogHelper.showSnackBar(context: context, text: data.message);
        context.goNamed(RouteNames.home_page);
        print(data);
        break;
      case DataStateFailed(:var message):
        print('Terjadi error saat register: $message');
        DialogHelper.showSnackBar(context: context, text: message);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;

    return Scaffold(
      backgroundColor: softGreen,
      body: SafeArea(
        child: Column(
          children: [
            // --- HEADER FIXED ---
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? 48 : 22,
                vertical: 24,
              ),
              child: _buildLogo(),
            ),

            // --- FORM SCROLLABLE ---
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 48 : 22,
                  vertical: 0,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 460),
                  child: _buildForm(),
                ),
              ),
            ),
          ],
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

  Widget _buildForm() {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            Center(
              child: const Text(
                'Buat Akun Baru',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF162016),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Center(
              child: const Text(
                'Isi data berikut untuk membuat akun baru.',
                style: TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF747474),
                ),
              ),
            ),
            const SizedBox(height: 28),

            _buildLabel('Nama Lengkap'),
            const SizedBox(height: 8),
            _buildTextField(
              controller: provider.nameController,
              hintText: 'Masukkan nama lengkap',
              prefixIcon: Icons.person_outline,
            ),

            const SizedBox(height: 18),
            _buildLabel('Email'),
            const SizedBox(height: 8),
            _buildTextField(
              controller: provider.emailController,
              hintText: 'Masukkan email',
              prefixIcon: Icons.email_outlined,
            ),

            const SizedBox(height: 18),
            _buildLabel('No. Telepon'),
            const SizedBox(height: 8),
            _buildTextField(
              controller: provider.phoneController,
              hintText: 'Masukkan no. telepon',
              prefixIcon: Icons.phone_outlined,
            ),
            const SizedBox(height: 18),
            _buildLabel('Alamat'),
            const SizedBox(height: 8),
            _buildTextField(
              controller: provider.addressController,
              hintText: 'Masukkan Alamat',
              prefixIcon: Icons.location_on,
            ),
            const SizedBox(height: 8),
            _buildLabel('Password'),
            const SizedBox(height: 8),
            _buildTextField(
              controller: provider.passwordController,
              hintText: 'Masukkan password',
              prefixIcon: Icons.lock_outline,
              obscureText: !provider.isShowPassword,
              suffixIcon: IconButton(
                onPressed: provider.togglePassword,
                icon: Icon(
                  provider.isShowPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 20,
                  color: const Color(0xFF777777),
                ),
              ),
            ),

            const SizedBox(height: 18),
            _buildLabel('Jenis Kelamin'),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildGenderOption(1, 'Laki-laki', provider),
                const SizedBox(width: 20),
                _buildGenderOption(2, 'Perempuan', provider),
              ],
            ),

            const SizedBox(height: 28),
            provider.state is DataStateLoading
                ? const Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: RGBProgressIndicator(),
                  ),
                )
                : SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () => handleRegister(provider),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryGreen,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sudah punya akun? ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF666666),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    DialogHelper.pushNamed(
                      context: context,
                      nameRoutes: RouteNames.login,
                    );
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: primaryGreen,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
          ],
        );
      },
    );
  }

  // Jangan lupa ubah _buildGenderOption agar menerima provider:
  Widget _buildGenderOption(int value, String label, AuthProvider provider) {
    return InkWell(
      onTap: () {
        provider.setGender(value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color:
              provider.gender == value
                  ? primaryGreen.withOpacity(0.15)
                  : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color:
                provider.gender == value
                    ? primaryGreen
                    : const Color(0xFFD2D2D2),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color:
                provider.gender == value
                    ? primaryGreen
                    : const Color(0xFF444444),
          ),
        ),
      ),
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
        prefixIcon: Icon(prefixIcon, size: 21, color: primaryGreen),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xFFF7FAF7),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Color(0xFFE4EAE4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: primaryGreen, width: 1.4),
        ),
      ),
    );
  }
}
