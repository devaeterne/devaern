// lib/main.dart (mobile / desktop için çalışır)
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:easy_localization/easy_localization.dart';
import 'layout/home_layout.dart';
import 'screens/pages/landing_page.dart';
import 'firebase_options.dart';
import 'layout/main_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      routes: {'/dashboard': (context) => const MainLayout()},
    );
  }
}
