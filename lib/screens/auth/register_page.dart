import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:universal_html/html.dart' as html;

import '../../services/google_identity_service.dart';
import '../../services/firestore_user_service.dart';
import '../../widgets/google_sign_in_widget.dart';
import '../../theme/colors.dart';
import '../../theme/buttons.dart';
import '../../theme/text_styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _loading = false;

  void _showError(String msg) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
  }

  Future<void> _registerWithEmail() async {
    setState(() => _loading = true);
    try {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      await credential.user?.updateDisplayName(name);

      if (credential.user != null) {
        await FirestoreUserService().addUser(
          uid: credential.user!.uid,
          email: email,
          displayName: name,
          role: 'freelancer',
        );
      }

      // ✅ Ana panele yönlendir
      if (context.mounted) {
        print("➡️ Email kaydı sonrası yönlendiriliyor...");
        Navigator.pushReplacementNamed(context, '/dashboard');
      }
    } on FirebaseAuthException catch (e) {
      _showError(e.message ?? "Bir hata oluştu.");
    } finally {
      setState(() => _loading = false);
    }
  }

  Future<void> _handleGoogleIdToken(String idToken) async {
    try {
      final user = await GoogleIdentityService().signInWithIdToken(
        idToken.trim(),
      );

      if (user != null) {
        await FirestoreUserService().addUser(
          uid: user.uid,
          email: user.email ?? '',
          displayName: user.displayName ?? '',
          role: 'freelancer',
        );

        if (context.mounted) {
          print("➡️ Google kaydı sonrası yönlendiriliyor...");
          Navigator.pushReplacementNamed(context, '/dashboard');
        }
      }
    } catch (e) {
      _showError("Google kayıt hatası: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    html.document.title = 'Devaern - Register';

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 16),
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

                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: "Adınız"),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: "E-posta"),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: "Şifre"),
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: _loading ? null : _registerWithEmail,
                  style: AppButtons.primary,
                  child: _loading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text("Kayıt Ol"),
                ),

                const SizedBox(height: 24),
                const Divider(),
                const SizedBox(height: 16),

                Text(
                  "Google ile Kayıt Ol",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.subheading,
                ),
                const SizedBox(height: 12),
                GoogleSignInWidget(onTokenReceived: _handleGoogleIdToken),

                const SizedBox(height: 24),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
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
