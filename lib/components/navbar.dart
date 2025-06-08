import 'package:flutter/material.dart';
import 'package:devaern/screens/home/widgets/languageSwitcher.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:easy_localization/easy_localization.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false, // sadece üst kısım için güvenli alan uygula
      child: Padding(
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo
                  Text(
                    'Devaern',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(flex: 2),

                  // Search bar
                  Expanded(
                    flex: 5,
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

                  const Spacer(flex: 2),

                  // Icons
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

                  // Language switcher
                  const SizedBox(width: 12),
                  const LanguageSwitcher(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
