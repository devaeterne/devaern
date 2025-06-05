import 'package:flutter/material.dart';
import '../theme/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.all(16),
      child: const Center(
        child: Text(
          "© 2025 Devaern - Tüm Hakları Saklıdır.",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
