import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:easy_localization/easy_localization.dart';

import 'firebase_options.dart';
import 'layout/home_layout.dart';
import 'screens/pages/landing_page.dart';
import 'screens/auth/login_page.dart';
import 'screens/auth/register_page.dart';

// Web platformuysa platform view registry'yi yükle
import 'utils/platform_view_stub.dart'
    if (dart.library.html) 'utils/platform_view_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (kIsWeb) {
    registerGoogleButtonViewFactory(); // sadece Web için çalışır
  }

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('tr'), Locale('me')],
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      child: const DevaernApp(),
    ),
  );
}

class DevaernApp extends StatelessWidget {
  const DevaernApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devaern',
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      home: const HomeLayout(child: LandingPage()),
      routes: {
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),
      },
    );
  }
}
