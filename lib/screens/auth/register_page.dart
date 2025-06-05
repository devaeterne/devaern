import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../services/google_identity_service.dart';
import '../../widgets/google_sign_in_widget.dart';
import '../home/home_screen.dart';
import '../../theme/colors.dart';
import '../../theme/buttons.dart';
import '../../theme/text_styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void _handleGoogleIdToken(String idToken) async {
    try {
      final user = await GoogleIdentityService().signInWithIdToken(
        idToken.trim(),
      );
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
      } else {
        _showError("Kayıt başarısız.");
      }
    } catch (e) {
      _showError("Hata: $e");
    }
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
  }

  @override
  Widget build(BuildContext context) {
    html.document.title = 'Devaern - Register';

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 12),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Devaern",
                  style: AppTextStyles.heading.copyWith(
                    color: AppColors.primary,
                    fontSize: 32,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  "Aramıza katıl.",
                  style: AppTextStyles.muted,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                const Text("Google ile Kayıt Ol", textAlign: TextAlign.center),
                const SizedBox(height: 12),
                GoogleSignInWidget(onTokenReceived: _handleGoogleIdToken),

                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text("Zaten hesabın var mı? Giriş Yap"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
