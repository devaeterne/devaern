import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
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
        children: [
          const HeroSection(),
          const SizedBox(height: 48),
          Text(
            'popular_services'.tr(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const PopularServices(),
        ],
      ),
    );
  }
}
