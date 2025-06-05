import 'package:flutter/material.dart';
import '../../layout/main_layout.dart';
import 'widgets/service_card.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: const [
            ServiceCard(
              title: "Logo Tasarımı",
              freelancer: "Ahmet T.",
              price: 750,
              imageUrl: "https://picsum.photos/id/1011/300/200",
            ),
            ServiceCard(
              title: "Web Sitesi Kurulumu",
              freelancer: "Zeynep K.",
              price: 1500,
              imageUrl: "https://picsum.photos/id/1005/300/200",
            ),
            ServiceCard(
              title: "Sosyal Medya Yönetimi",
              freelancer: "Berk A.",
              price: 1200,
              imageUrl: "https://picsum.photos/id/1012/300/200",
            ),
          ],
        ),
      ),
    );
  }
}
