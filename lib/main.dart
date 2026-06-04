import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/core/constant/router.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'di/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id', null);
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => di.locator<AuthProvider>()),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
        routerConfig: router,
        debugShowCheckedModeBanner: false,
    ),
    );
  }
}

