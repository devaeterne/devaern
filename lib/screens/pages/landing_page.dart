import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(child: _buildHeroSection(context)),
          SliverToBoxAdapter(child: _buildCategoriesSection()),
          SliverToBoxAdapter(child: _buildFeaturedFreelancers()),
          SliverToBoxAdapter(child: _buildBenefitsSection()),
          SliverToBoxAdapter(child: _buildBlogSection()),
          SliverToBoxAdapter(child: _buildFooter()),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.white,
      elevation: 1,
      title: Row(
        children: [
          const FlutterLogo(),
          const SizedBox(width: 8),
          const Text('FreelanceX', style: TextStyle(color: Colors.black)),
        ],
      ),
      actions: [
        TextButton(onPressed: () {}, child: const Text("Explore")),
        TextButton(onPressed: () {}, child: const Text("Become a Seller")),
        TextButton(onPressed: () {}, child: const Text("Sign In")),
        TextButton(
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('Join', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: const Color(0xFFF0FFF4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            "Find the perfect freelance services for your business",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What service are you looking for?',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Search"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    final categories = [
      "Graphics & Design",
      "Programming",
      "Writing",
      "Marketing",
    ];
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) => Chip(
            label: Text(categories[index]),
            backgroundColor: Colors.grey[200],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedFreelancers() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Featured Freelancers",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (_, i) => Container(
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const CircleAvatar(radius: 32),
                    const SizedBox(height: 8),
                    const Text(
                      "Jane Doe",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text("UI/UX Designer"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitsSection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Why choose FreelanceX?",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.check),
            title: Text("Trusted by thousands"),
          ),
          ListTile(leading: Icon(Icons.check), title: Text("Secure payments")),
          ListTile(leading: Icon(Icons.check), title: Text("24/7 support")),
        ],
      ),
    );
  }

  Widget _buildBlogSection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "From our community",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text("- How to price your services as a freelancer"),
          Text("- Building a strong profile"),
          Text("- Growing your freelance business"),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          Text("© 2025 FreelanceX. All rights reserved."),
          SizedBox(height: 8),
          Text("Terms | Privacy | Contact"),
        ],
      ),
    );
  }
}
