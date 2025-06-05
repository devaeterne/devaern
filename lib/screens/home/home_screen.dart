import 'package:flutter/material.dart';
import 'package:devaern/layout/main_layout.dart'; // Layout'u buradan çekiyoruz
import 'widgets/hero_section.dart';
import 'widgets/popular_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
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
    );
  }
}
