import 'package:flutter/material.dart';
import '../../layout/main_layout.dart';
import 'widgets/hero_section.dart';
import 'widgets/popular_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeroSection(),
            SizedBox(height: 48),
            Text(
              "Popüler Hizmetler",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            PopularServices(),
          ],
        ),
      ),
    );
  }
}
