import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:country_flags/country_flags.dart';

class NavbarFirst extends StatelessWidget {
  const NavbarFirst({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo
            Text(
              'Devaern',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            Row(
              children: [
                TextButton(onPressed: () {}, child: Text('sign_up'.tr())),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
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
                    value: locale,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: const [Locale('tr'), Locale('en'), Locale('me')].map(
                      (locale) {
                        return DropdownMenuItem(
                          value: locale,
                          child: CountryFlag.fromLanguageCode(
                            locale.languageCode,
                            height: 20,
                            width: 24,
                            shape: Circle(),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (locale) async {
                      if (locale != null) {
                        await context.setLocale(locale);
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
