import 'package:flutter/material.dart';
import 'widgets/search_banner.dart';
import 'widgets/category_grid.dart';
import 'widgets/freelancer_list.dart';
import 'widgets/testimonials.dart';
import 'widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SizedBox(height: 24),
          SearchBanner(),
          SizedBox(height: 32),
          CategoryGrid(),
          SizedBox(height: 32),
          FreelancerList(),
          SizedBox(height: 32),
          Testimonials(),
          SizedBox(height: 32),
          Footer(),
        ],
      ),
    );
  }
}
