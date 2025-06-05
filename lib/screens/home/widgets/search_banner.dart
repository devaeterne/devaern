import 'package:flutter/material.dart';

class SearchBanner extends StatelessWidget {
  const SearchBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ne hizmete ihtiyacın var?",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            hintText: "Yazılım, tasarım, seslendirme...",
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
