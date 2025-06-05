// lib/main.dart
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'layout/main_layout.dart';
import 'layout/home_layout.dart';
import 'screens/pages/landing_page.dart'; // örnek içerik

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('tr'), Locale('me')],
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      child: const DevaernApp(),
    ),
  );
}

class DevaernApp extends StatelessWidget {
  const DevaernApp({super.key});

  final bool isLoggedIn = false; // 🔐 Burayı auth ile entegre edeceğiz

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devaern',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      home: isLoggedIn
          ? const MainLayout()
          : const HomeLayout(child: LandingPage()),
    );
  }
}
