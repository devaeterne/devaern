import 'package:devaern/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'screens/home/home_screen.dart'; // Giriş ekranı

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'), // English
        Locale('tr'), // Turkish
        Locale('me'), // Montenegrin
      ],
      path: 'assets/lang', // JSON çeviri dosyalarının yolu
      fallbackLocale: const Locale('en'),
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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      home: const MainLayout(), // Başlangıç sayfası
    );
  }
}
