import 'package:go_router/go_router.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/main_navigation.dart';
import 'package:rimbun_cicio_kost/core/presenter/detail/detail_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/detail/detail_payment_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/login/login_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/payment/payment_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/profile/profile_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/register/register_page.dart';
import 'package:rimbun_cicio_kost/core/presenter/reservation/form_reservation_page.dart';
import '../presenter/welcome/welcome.dart';

final GoRouter router = GoRouter(
  initialLocation: WELCOME,
  routes: [
    GoRoute(
      path: WELCOME,
      name: RouteNames.welcome,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: HOME_PAGE,
      name: RouteNames.home_page,
      builder: (context, state) => const MainNavigationPage(),
    ),
    GoRoute(
      path: "$DETAIL_PAGE/:id",
      name: RouteNames.detail_page,
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return DetailKostPage(id: id);
      },
    ),
    GoRoute(
      path: PROFILE_PAGE,
      name: RouteNames.profile_page,
      builder: (context, state) => ProfilePage(),
    ),
    GoRoute(
      path: LOGIN_PAGE,
      name: RouteNames.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: REGISTERR_PAGE,
      name: RouteNames.register,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: FORM_RESERVATION,
      name: RouteNames.form_reservation_page,
      builder:
          (context, state) => ReservationFormPage(
            roomData: state.extra as Map<String, dynamic>,
          ),
    ),
    GoRoute(
      path: PAYMENT,
      name: RouteNames.payment,
      builder: (context, state) => PaymentMethodPageInteractive(
        valuePayment: state.extra as Map<String, dynamic>,
      ),
    ),
    GoRoute(
      path: DETAIL_PAYMENT_PAGE,
      name: RouteNames.payment_detail,
      builder: (context, state) => const PaymentStatusPageFull(),
    ),
  ],
);
