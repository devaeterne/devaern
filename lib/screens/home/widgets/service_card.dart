import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_styles.dart';
import '../../../theme/buttons.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String freelancer;
  final double price;
  final String imageUrl;

  const ServiceCard({
    super.key,
    required this.title,
    required this.freelancer,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Text(title, style: AppTextStyles.subheading),
          const SizedBox(height: 4),
          Text(freelancer, style: AppTextStyles.muted),
          const SizedBox(height: 8),
          Text("₺${price.toStringAsFixed(0)}", style: AppTextStyles.body),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: AppButtons.primary,
            child: const Text("Detaylar"),
          ),
        ],
      ),
    );
  }
}
