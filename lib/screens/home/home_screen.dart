import 'package:flutter/material.dart';
import '../../components/button_primary.dart';
import '../../components/input_field.dart';
import '../../components/card_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: CardBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const InputField(hintText: "E-posta adresi"),
                const SizedBox(height: 16),
                const InputField(hintText: "Şifre", obscure: true),
                const SizedBox(height: 24),
                ButtonPrimary(text: "Giriş Yap", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
