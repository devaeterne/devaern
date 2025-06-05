import 'package:flutter/material.dart';

class BlogList extends StatelessWidget {
  const BlogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Topluluk ve Bilgi",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "Devaern topluluğu yalnızca bir ağ değil, deneyim ve bilgi alışverişinin merkezidir.",
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: const [
            BlogCard(
              title:
                  "Düşük Bütçeli Girişimciler Neden Freelancer’larla Çalışmalı?",
            ),
            BlogCard(
              title:
                  "Projenin Başında Freelancer’a Hangi Detayları Vermelisin?",
            ),
            BlogCard(
              title:
                  "Freelancer’larla Çalışırken Yapılması ve Yapılmaması Gerekenler",
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextButton(onPressed: () {}, child: const Text("Tüm Yazılar")),
      ],
    );
  }
}

class BlogCard extends StatelessWidget {
  final String title;

  const BlogCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(title),
    );
  }
}
