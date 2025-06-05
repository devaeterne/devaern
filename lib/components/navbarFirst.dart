import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:country_flags/country_flags.dart';

class NavbarFirst extends StatefulWidget {
  const NavbarFirst({super.key});

  @override
  State<NavbarFirst> createState() => _NavbarFirstState();
}

class _NavbarFirstState extends State<NavbarFirst> {
  String _mapLocaleToCountryCode(String languageCode) {
    switch (languageCode) {
      case 'tr':
        return 'TR';
      case 'en':
        return 'GB';
      case 'me':
        return 'ME';
      default:
        return 'GB';
    }
  }

  @override
  Widget build(BuildContext context) {
    context.locale; // rebuild destekle

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
            Text(
              'Devaern',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              children: [
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/register'),
                  child: Text('sign_up'.tr()),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('login'.tr()),
                ),
                const SizedBox(width: 24),
                DropdownButtonHideUnderline(
                  child: DropdownButton<Locale>(
                    value: context.locale,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: const [Locale('tr'), Locale('en'), Locale('me')]
                        .map(
                          (loc) => DropdownMenuItem(
                            value: loc,
                            child: CountryFlag.fromCountryCode(
                              _mapLocaleToCountryCode(loc.languageCode),
                              height: 20,
                              width: 24,
                              shape: Circle(),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (newLocale) async {
                      if (newLocale != null) {
                        await context.setLocale(newLocale);
                        setState(() {});
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
