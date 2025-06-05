import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(),
        SizedBox(height: 12),
        Text(
          "© 2025 Devaern | Tüm Hakları Saklıdır.",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 8),
        Text("İletişim: info@devaern.com"),
      ],
    );
  }
}
