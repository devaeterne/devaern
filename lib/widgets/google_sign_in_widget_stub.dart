import 'package:flutter/material.dart';

class GoogleSignInWidgetWeb extends StatelessWidget {
  final void Function(String) onTokenReceived;

  const GoogleSignInWidgetWeb({super.key, required this.onTokenReceived});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink(); // Web dışında görünmez
  }
}
