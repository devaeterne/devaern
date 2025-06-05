import 'package:flutter/material.dart';
import '../components/navbar.dart';
import '../components/sidebar.dart';
import '../screens/pages/home_page.dart';
import '../screens/pages/orders_page.dart';
import '../screens/pages/requests_page.dart';
import '../screens/pages/lists_page.dart';
import '../screens/pages/wallet_page.dart';
import '../screens/pages/ads_page.dart';
import '../screens/pages/portfolio_page.dart';
import '../screens/pages/decoin_page.dart';
import '../screens/pages/rules_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  String activePage = 'home';

  Widget _getActivePage() {
    switch (activePage) {
      case 'orders':
        return const OrdersPage();
      case 'requests':
        return const RequestsPage();
      case 'lists':
        return const ListsPage();
      case 'wallet':
        return const WalletPage();
      case 'ads':
        return const AdsPage();
      case 'portfolio':
        return const PortfolioPage();
      case 'bicoin':
        return const DecoinPage();
      case 'rules':
        return const RulesPage();
      case 'home':
      default:
        return const HomePage();
    }
  }

  void _onSidebarItemTap(String pageKey) {
    setState(() {
      activePage = pageKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const NavbarWidget(),
          Expanded(
            child: Row(
              children: [
                Sidebar(
                  activeKey: activePage,
                  onItemSelected: _onSidebarItemTap,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: _getActivePage(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
