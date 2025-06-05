import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/icons.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Row(
        children: [
          const Text(
            "Devaern",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.user, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
