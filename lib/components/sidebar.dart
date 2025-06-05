import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'sidebar_item.dart';

class Sidebar extends StatelessWidget {
  final String activeKey;
  final void Function(String) onItemSelected;

  const Sidebar({
    super.key,
    required this.activeKey,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SidebarItem(
            icon: LucideIcons.home,
            labelKey: 'sidebar.home',
            isActive: activeKey == 'home',
            onTap: () => onItemSelected('home'),
          ),
          SidebarItem(
            icon: LucideIcons.shoppingBag,
            labelKey: 'sidebar.orders',
            isActive: activeKey == 'orders',
            onTap: () => onItemSelected('orders'),
          ),
          SidebarItem(
            icon: LucideIcons.mailQuestion,
            labelKey: 'sidebar.requests',
            isActive: activeKey == 'requests',
            onTap: () => onItemSelected('requests'),
          ),
          SidebarItem(
            icon: LucideIcons.list,
            labelKey: 'sidebar.lists',
            isActive: activeKey == 'lists',
            onTap: () => onItemSelected('lists'),
          ),
          SidebarItem(
            icon: LucideIcons.wallet,
            labelKey: 'sidebar.wallet',
            isActive: activeKey == 'wallet',
            onTap: () => onItemSelected('wallet'),
          ),
          SidebarItem(
            icon: LucideIcons.megaphone,
            labelKey: 'sidebar.ads',
            isActive: activeKey == 'ads',
            onTap: () => onItemSelected('ads'),
          ),
          SidebarItem(
            icon: LucideIcons.briefcase,
            labelKey: 'sidebar.portfolio',
            isActive: activeKey == 'portfolio',
            onTap: () => onItemSelected('portfolio'),
          ),
          SidebarItem(
            icon: LucideIcons.coins,
            labelKey: 'sidebar.decoin',
            isActive: activeKey == 'decoin',
            onTap: () => onItemSelected('decoin'),
          ),
          SidebarItem(
            icon: LucideIcons.shieldCheck,
            labelKey: 'sidebar.rules',
            isActive: activeKey == 'rules',
            onTap: () => onItemSelected('rules'),
          ),
        ],
      ),
    );
  }
}
