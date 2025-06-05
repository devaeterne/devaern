import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class DecoinPage extends StatelessWidget {
  const DecoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'sidebar.decoin'.tr(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text('Decoin içeriği buraya gelecek...'),
      ],
    );
  }
}
