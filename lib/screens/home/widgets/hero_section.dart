import 'package:flutter/material.dart';
import '../../../theme/text_styles.dart';
import '../../../theme/buttons.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Freelancer dünyasına adım at", style: AppTextStyles.heading),
        const SizedBox(height: 12),
        Text(
          "İşlerini güvenle teslim edecek yetenekli freelancerları bul.",
          style: AppTextStyles.body,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Freelancerları Keşfet"),
        ),
      ],
    );
  }
}
