import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/home/home_screen.dart';
import 'theme/colors.dart';
import 'theme/text_styles.dart';
import 'theme/buttons.dart';
import 'layout/main_layout.dart';
import 'screens/home/widgets/home_content.dart';

void main() {
  runApp(const DevaernApp());
}

class DevaernApp extends StatelessWidget {
  const DevaernApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devaern',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtons.primary, // 🔥 tüm ElevatedButton'lar kırmızı olacak
        ),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),

      home:
          const HomeScreen(), // burada artık login değil, layoutlu anasayfa başlıyor
    );
  }
}
