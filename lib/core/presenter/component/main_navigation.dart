import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/bottom_nav_bar.dart';
import 'package:rimbun_cicio_kost/core/presenter/favorite/favorite_page.dart';

import '../home_page/home_page.dart';
import '../profile/profile_page.dart';
import '../reservation/reservation_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      context.read<AuthProvider>().checkLogin();
    });
  }
  final pages = const [
    HomePage(),
    ReservationPage(),
    ProfilePage(),
    FavoritePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, child){
        final isLoggedIn = authProvider.isLoggedIn;

        final pages = isLoggedIn
            ? const [
          HomePage(),
          ReservationPage(),
          ProfilePage(),
          FavoritePage(),
        ]
            : const [
          HomePage(),
          FavoritePage(),
        ];
        final safeSelectedIndex = selectedIndex >= pages.length ? 0 : selectedIndex;

        return Scaffold(
          backgroundColor: const Color(0xFFF4FAF4),
          body: pages[selectedIndex],
          bottomNavigationBar: CustomBottomNavBar(
            isLoggedIn: isLoggedIn,
            selectedIndex: safeSelectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        );
      },
    );
  }
}