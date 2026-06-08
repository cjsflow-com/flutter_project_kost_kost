import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic>? user;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  Future<void> _loadUser() async {
    final name = await SharedPreferencesHelper.getString(PREF_NAME);
    final email = await SharedPreferencesHelper.getString(PREF_EMAIL);
    final address = await SharedPreferencesHelper.getString(PREF_ADDRESS);
    final gender = await SharedPreferencesHelper.getInt(PREF_GENDER);
    final phone = await SharedPreferencesHelper.getString(PREF_PHONE);

    setState(() {
      user = {
        'name': name ?? '',
        'email': email ?? '',
        'address': address ?? '',
        'gender': gender ?? 1,
        'phone': phone ?? '',
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width >= 600;

    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: isTablet ? 48 : 16, vertical: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: isTablet ? 60 : 50,
              backgroundColor: Colors.grey.shade300,
              child: Icon(
                Icons.person,
                size: isTablet ? 60 : 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(user!['name'], style: TextStyle(fontSize: isTablet ? 26 : 22, fontWeight: FontWeight.w800)),
            const SizedBox(height: 6),
            Text(user!['email'], style: TextStyle(fontSize: isTablet ? 18 : 16, color: Colors.grey.shade700)),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildInfoRow('Alamat', user!['address']),
                    const Divider(),
                    _buildInfoRow('Gender', user!['gender'] == 1 ? 'Laki-Laki' : 'Perempuan'),
                    const Divider(),
                    _buildInfoRow('Phone', user!['phone']),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 100, child: Text('$title:', style: const TextStyle(fontWeight: FontWeight.w700))),
          const SizedBox(width: 8),
          Expanded(child: Text('$value', style: const TextStyle(fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }
}