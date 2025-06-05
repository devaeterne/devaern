import 'package:flutter/material.dart';
import '../theme/colors.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool obscure;
  final TextEditingController? controller;

  const InputField({
    super.key,
    required this.hintText,
    this.obscure = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
        ),
      ),
    );
  }
}
