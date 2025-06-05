import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'sidebar_item.dart';

class Sidebar extends StatefulWidget {
  final String activeKey;
  final Function(String) onItemSelected;

  const Sidebar({
    super.key,
    required this.activeKey,
    required this.onItemSelected,
  });

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
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
            isActive: widget.activeKey == 'home',
            onTap: () => widget.onItemSelected('home'),
          ),
          SidebarItem(
            icon: LucideIcons.shoppingBag,
            labelKey: 'sidebar.orders',
            isActive: widget.activeKey == 'orders',
            onTap: () => widget.onItemSelected('orders'),
          ),
          SidebarItem(
            icon: LucideIcons.mailQuestion,
            labelKey: 'sidebar.requests',
            isActive: widget.activeKey == 'requests',
            onTap: () => widget.onItemSelected('requests'),
          ),
          SidebarItem(
            icon: LucideIcons.list,
            labelKey: 'sidebar.lists',
            isActive: widget.activeKey == 'lists',
            onTap: () => widget.onItemSelected('lists'),
          ),
          SidebarItem(
            icon: LucideIcons.wallet,
            labelKey: 'sidebar.wallet',
            isActive: widget.activeKey == 'wallet',
            onTap: () => widget.onItemSelected('wallet'),
          ),
          SidebarItem(
            icon: LucideIcons.megaphone,
            labelKey: 'sidebar.ads',
            isActive: widget.activeKey == 'ads',
            onTap: () => widget.onItemSelected('ads'),
          ),
          SidebarItem(
            icon: LucideIcons.briefcase,
            labelKey: 'sidebar.portfolio',
            isActive: widget.activeKey == 'portfolio',
            onTap: () => widget.onItemSelected('portfolio'),
          ),
          SidebarItem(
            icon: LucideIcons.coins,
            labelKey: 'sidebar.decoin',
            isActive: widget.activeKey == 'decoin',
            onTap: () => widget.onItemSelected('decoin'),
          ),
          SidebarItem(
            icon: LucideIcons.shieldCheck,
            labelKey: 'sidebar.rules',
            isActive: widget.activeKey == 'rules',
            onTap: () => widget.onItemSelected('rules'),
          ),

          const Spacer(),

          // 🦶 Footer text in sidebar
          Center(
            child: Text(
              '© 2025 Devaern',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
