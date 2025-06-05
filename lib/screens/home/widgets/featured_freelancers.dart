import 'package:flutter/material.dart';

class FeaturedFreelancers extends StatelessWidget {
  const FeaturedFreelancers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Devaern Freelancerları",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "Alanında uzman, özenle seçilmiş freelancerlarımız ile projelerinizi bir adım öteye taşıyın.",
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: const [
            FreelancerCard(
              name: "simge123",
              title: "Yazılım Uzmanı",
              price: "₺4200",
            ),
            FreelancerCard(
              name: "iremoznurkilic",
              title: "Seslendirme Sanatçısı",
              price: "₺1000",
            ),
            FreelancerCard(
              name: "waldoroyal",
              title: "SEO & Pazarlama",
              price: "₺500",
            ),
            FreelancerCard(
              name: "sibeldogan12",
              title: "Grafik Tasarımcı",
              price: "₺740",
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextButton(onPressed: () {}, child: const Text("Daha Fazlası")),
      ],
    );
  }
}

class FreelancerCard extends StatelessWidget {
  final String name;
  final String title;
  final String price;

  const FreelancerCard({
    super.key,
    required this.name,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(title),
          const SizedBox(height: 8),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
