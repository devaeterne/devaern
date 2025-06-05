import 'package:flutter/material.dart';
import 'service_card.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
          title: "Mobil Uygulama",
          freelancer: "Zeynep K.",
          price: 2500,
          imageUrl: "https://picsum.photos/id/1012/300/200",
        ),
        ServiceCard(
          title: "Çeviri Hizmeti",
          freelancer: "Berk A.",
          price: 450,
          imageUrl: "https://picsum.photos/id/1013/300/200",
        ),
        ServiceCard(
          title: "Mobil Uygulama",
          freelancer: "Zeynep K.",
          price: 2500,
          imageUrl: "https://picsum.photos/id/1012/300/200",
        ),
        ServiceCard(
          title: "Çeviri Hizmeti",
          freelancer: "Berk A.",
          price: 450,
          imageUrl: "https://picsum.photos/id/1013/300/200",
        ),
      ],
    );
  }
}
