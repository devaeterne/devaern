import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../theme/colors.dart';
import '../../theme/text_styles.dart';
import '../../theme/buttons.dart';
import '../../theme/icons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    context.locale; // 🌐 dil değiştiğinde rebuild için takip

    return Column(
      children: [
        _buildHeroSection(context),
        _buildCategoriesSection(),
        _buildFeaturedFreelancers(),
        _buildBenefitsSection(),
        _buildBlogSection(),
        _buildFooter(),
      ],
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      color: AppColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "hero_title".tr(),
            style: AppTextStyles.heading.copyWith(fontSize: 32),
          ),
          const SizedBox(height: 16),
          Text(
            "hero_subtitle".tr(),
            style: AppTextStyles.body.copyWith(
              fontSize: 18,
              color: AppColors.muted,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search_hint'.tr(),
                    prefixIcon: const Icon(AppIcons.search),
                    hintStyle: AppTextStyles.muted,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: const BorderSide(color: AppColors.iconMuted),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: AppButtons.primary,
                child: Text("search".tr()),
              ),
            ],
          ),
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
            labelStyle: AppTextStyles.body,
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
          Text("popular_services".tr(), style: AppTextStyles.subheading),
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
                  children: const [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 8),
                    Text("Jane Doe", style: AppTextStyles.body),
                    Text("UI/UX Designer", style: AppTextStyles.muted),
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
        children: [
          Text("why_freelancer".tr(), style: AppTextStyles.subheading),
          const SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text("Trusted by thousands"),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text("Secure payments"),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text("24/7 support"),
          ),
        ],
      ),
    );
  }

  Widget _buildBlogSection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("community".tr(), style: AppTextStyles.subheading),
          const SizedBox(height: 12),
          Text(
            "- How to price your services as a freelancer",
            style: AppTextStyles.body,
          ),
          Text("- Building a strong profile", style: AppTextStyles.body),
          Text("- Growing your freelance business", style: AppTextStyles.body),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text("footer_copyright".tr(), style: AppTextStyles.muted),
          const SizedBox(height: 8),
          Text("footer_links".tr(), style: AppTextStyles.muted),
        ],
      ),
    );
  }
}
