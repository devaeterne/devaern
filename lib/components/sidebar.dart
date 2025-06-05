import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/icons.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: AppColors.surface,
      child: ListView(
        children: const [
          ListTile(leading: Icon(AppIcons.home), title: Text("Anasayfa")),
          ListTile(leading: Icon(AppIcons.work), title: Text("Projeler")),
          ListTile(leading: Icon(AppIcons.message), title: Text("Mesajlar")),
        ],
      ),
    );
  }
}
