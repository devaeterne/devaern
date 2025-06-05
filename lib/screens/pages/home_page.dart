import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../home/widgets/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero Başlık
          Text(
            'hero_title'.tr(),
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          // Hero Alt Başlık
          Text(
            'hero_subtitle'.tr(),
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 24),

          // Butonlar
          Row(
            children: [
              // 🔴 Primary Buton - Hadi Başla
              ElevatedButton(
                onPressed: () {
                  // TODO: bir aksiyon
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 6,
                  shadowColor: Colors.redAccent.withOpacity(0.4),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                child: const Text('start').tr(),
              ),
              const SizedBox(width: 16),

              // ⚪ Secondary Buton - Neden Freelancer
              ElevatedButton(
                onPressed: () {
                  // TODO: bir aksiyon
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 18,
                  ),
                  backgroundColor: Colors.grey.shade100,
                  foregroundColor: Colors.black87,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey.shade400),
                  ),
                  shadowColor: Colors.grey.withOpacity(0.3),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                child: const Text('why_freelancer').tr(),
              ),
            ],
          ),

          const SizedBox(height: 32),

          // Hero görseli (örnek banner)
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://picsum.photos/id/1040/1200/300",
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 32),

          // Popüler Hizmetler Başlığı
          Text(
            'popular_services'.tr(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // En fazla 5 ServiceCard gösterimi
          Wrap(
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
              ServiceCard(
                title: "E-Ticaret Danışmanlığı",
                freelancer: "Selin D.",
                price: 1350,
                imageUrl: "https://picsum.photos/id/1020/300/200",
              ),
              ServiceCard(
                title: "Kurumsal Kimlik",
                freelancer: "Murat E.",
                price: 2000,
                imageUrl: "https://picsum.photos/id/1033/300/200",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
