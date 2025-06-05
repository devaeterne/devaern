import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../theme/colors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  Widget buildNavItem(IconData icon, String label, {bool active = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: active ? AppColors.primary : AppColors.iconMuted),
          const SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
              color: active ? AppColors.primary : AppColors.text,
              fontWeight: active ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        color: AppColors.sidebarBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DEVAERN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 32),

            buildNavItem(LucideIcons.home, "Ana Sayfa", active: true),
            buildNavItem(LucideIcons.shoppingCart, "Siparişlerim"),
            buildNavItem(LucideIcons.listChecks, "Özel Alıcı İsteklerim"),
            buildNavItem(LucideIcons.heart, "Listelerim"),
            buildNavItem(LucideIcons.wallet, "Bakiyem"),

            const SizedBox(height: 32),
            Text(
              "FREELANCER",
              style: TextStyle(fontSize: 12, color: AppColors.muted),
            ),

            const SizedBox(height: 12),
            buildNavItem(LucideIcons.users, "Topluluk Kuralları"),
            buildNavItem(LucideIcons.target, "Alıcı İstekleri"),
            buildNavItem(LucideIcons.badgeCheck, "Satışlarım"),
            buildNavItem(LucideIcons.briefcase, "İlanlarım"),
            buildNavItem(LucideIcons.folderOpen, "Portfolyom"),
            buildNavItem(LucideIcons.bitcoin, "DECoin Hesabım"),

            const Spacer(),
            const Divider(),
            Text(
              "© 2025 Devaern",
              style: TextStyle(fontSize: 12, color: AppColors.muted),
            ),
          ],
        ),
      ),
    );
  }
}
