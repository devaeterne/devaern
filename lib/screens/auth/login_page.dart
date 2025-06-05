import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:devaern/widgets/google_sign_in_widget.dart'; // bu senin platform uyumlu Google butonun

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _loading = false;

  Future<void> _handleGoogleIdToken(String idToken) async {
    setState(() => _loading = true);

    try {
      final credential = GoogleAuthProvider.credential(idToken: idToken);
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );

      print("✅ Giriş başarılı: ${userCredential.user?.email}");

      // Giriş başarılıysa yönlendir
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, '/');
      }
    } catch (e) {
      print("❌ Firebase giriş hatası: $e");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Google ile giriş yapılamadı')));
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Devaern",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),

              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "E-mail"),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Şifre"),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  // email login için ileride kullanılabilir
                },
                child: const Text("Giriş Yap"),
              ),
              const SizedBox(height: 16),

              if (_loading)
                const CircularProgressIndicator()
              else
                GoogleSignInWidget(onTokenReceived: _handleGoogleIdToken),

              const SizedBox(height: 16),

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text("Hesabın yok mu? Kayıt Ol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
