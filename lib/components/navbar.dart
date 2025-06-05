import 'package:flutter/material.dart';
import 'package:devaern/screens/home/widgets/languageSwitcher.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:easy_localization/easy_localization.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            // LOGO or TITLE
            Text(
              'Devaern',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(width: 150),

            // SEARCH BAR (KISALTILMIŞ HALİ)
            Expanded(
              child: SizedBox(
                height: 42,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search_hint'.tr(),
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 100),

            IconButton(
              icon: const Icon(LucideIcons.bell),
              onPressed: () {},
              tooltip: 'Notifications',
            ),
            IconButton(
              icon: const Icon(LucideIcons.mail),
              onPressed: () {},
              tooltip: 'Messages',
            ),
            IconButton(
              icon: const Icon(LucideIcons.user),
              onPressed: () {},
              tooltip: 'Profile',
            ),
            // DİL SEÇİCİ (SADELEŞTİRİLMİŞ)
            const LanguageSwitcher(),

            const SizedBox(width: 24),

            // ICONLAR: BİLDİRİM, MESAJ, PROFİL
          ],
        ),
      ),
    );
  }
}
