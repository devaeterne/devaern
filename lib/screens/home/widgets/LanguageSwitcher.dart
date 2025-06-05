import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:country_flags/country_flags.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  String _getCountryCode(String langCode) {
    switch (langCode) {
      case 'tr':
        return 'TR';
      case 'en':
        return 'US';
      case 'me':
        return 'ME';
      case 'ru':
        return 'RU';
      default:
        return 'US';
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;

    return Row(
      children: [
        const Text('|', style: TextStyle(color: Colors.grey)),
        const SizedBox(width: 24),

        DropdownButtonHideUnderline(
          child: DropdownButton<Locale>(
            value: locale,
            icon: const Icon(Icons.arrow_drop_down),
            items: const [Locale('tr'), Locale('en'), Locale('me')].map((
              locale,
            ) {
              return DropdownMenuItem(
                value: locale,
                child: CountryFlag.fromCountryCode(
                  _getCountryCode(locale.languageCode),
                  height: 20,
                  width: 24,
                  shape: Circle(),
                ),
              );
            }).toList(),
            onChanged: (locale) async {
              if (locale != null) {
                await context.setLocale(locale);
              }
            },
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
