import 'package:flutter/material.dart';
import '../../../theme/text_styles.dart';
import '../../../theme/colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HERO
          Text(
            "İşini Hallet, Yeteneği Keşfet!",
            style: AppTextStyles.heading.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 8),
          const Text(
            "Güvenilir freelancer'larla buluş, projen hızla ilerlesin.",
            style: AppTextStyles.muted,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text("Freelancerları Keşfet"),
          ),
          const SizedBox(height: 40),

          // KATEGORİLER
          Text("Popüler Kategoriler", style: AppTextStyles.subheading),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _category("Logo Tasarımı"),
              _category("Web Sitesi"),
              _category("Sosyal Medya"),
              _category("Yazılım Geliştirme"),
              _category("Çeviri"),
              _category("Reklam"),
            ],
          ),
          const SizedBox(height: 40),

          // FREELANCER KARTLARI
          Text("Öne Çıkan Freelancerlar", style: AppTextStyles.subheading),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) => _freelancerCard(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _category(String title) {
    return Chip(
      label: Text(title),
      backgroundColor: AppColors.secondary.withOpacity(0.1),
      labelStyle: const TextStyle(color: AppColors.primary),
    );
  }

  Widget _freelancerCard() {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://i.pravatar.cc/150"),
          ),
          SizedBox(height: 12),
          Text(
            "Ahmet Tasarımcı",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Grafik Tasarım", style: TextStyle(color: AppColors.muted)),
        ],
      ),
    );
  }
}
