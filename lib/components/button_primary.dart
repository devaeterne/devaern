import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool fullWidth;

  const ButtonPrimary({
    super.key,
    required this.text,
    required this.onPressed,
    this.fullWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: fullWidth
            ? const BoxConstraints(maxWidth: 400)
            : const BoxConstraints(),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFB71C1C), Color(0xFFD32F2F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 10,
              ),
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
