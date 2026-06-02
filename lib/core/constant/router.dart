import 'package:go_router/go_router.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/main_navigation.dart';
import 'package:rimbun_cicio_kost/core/presenter/detail/detail_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/login/login_page.dart';
import '../presenter/welcome/welcome.dart';


final GoRouter router = GoRouter(
  initialLocation: WELCOME,
  routes: [
    GoRoute(
      path: WELCOME,
      name: RouteNames.welcome,
      builder: (context, state) => const WelcomePage()
    ),
    GoRoute(
      path: HOME_PAGE,
      name: RouteNames.home_page,
      builder: (context, state) => const MainNavigationPage()
    ),
    GoRoute(
      path: DETAIL_PAGE,
      name: RouteNames.detail_page,
      builder: (context, state) => const DetailKostPage()
    ),
    GoRoute(
        path: LOGIN_PAGE,
        name: RouteNames.login,
        builder: (context, state) => const LoginPage()
    ),
  ]
);