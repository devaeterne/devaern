import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'Yazılım', 'icon': Icons.code},
      {'name': 'Tasarım', 'icon': Icons.brush},
      {'name': 'Çeviri', 'icon': Icons.translate},
      {'name': 'Video', 'icon': Icons.movie},
      {'name': 'Yazı & İçerik', 'icon': Icons.edit},
    ];

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: categories
          .map(
            (cat) => Chip(
              avatar: Icon(cat['icon'] as IconData, color: Colors.white),
              label: Text(cat['name'] as String),
              backgroundColor: const Color(0xFF5B21B6),
              labelStyle: const TextStyle(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          )
          .toList(),
    );
  }
}
