import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'sidebar.portfolio'.tr(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text('Portfolio içeriği buraya gelecek...'),
      ],
    );
  }
}
