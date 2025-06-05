import 'package:flutter/material.dart';
import '../components/navbar.dart';
import '../components/sidebar.dart';
import '../components/footer.dart';
import 'responsive_layout.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Scaffold(
        appBar: AppBar(title: const Text("Devaern")),
        drawer: const Drawer(child: Sidebar()),
        body: Column(
          children: [
            Expanded(child: child),
            const Footer(),
          ],
        ),
      ),
      desktop: Scaffold(
        body: Column(
          children: [
            const Navbar(),
            Expanded(
              child: Row(
                children: [
                  const Sidebar(),
                  Expanded(child: child),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
