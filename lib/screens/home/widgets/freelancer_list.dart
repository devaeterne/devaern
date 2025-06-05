import 'package:flutter/material.dart';

class FreelancerList extends StatelessWidget {
  const FreelancerList({super.key});

  @override
  Widget build(BuildContext context) {
    final freelancers = [
      {'name': 'Ali Yılmaz', 'role': 'Flutter Developer'},
      {'name': 'Zeynep Kaya', 'role': 'UX Designer'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: freelancers
          .map(
            (freelancer) => Card(
              elevation: 2,
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(freelancer['name']!),
                subtitle: Text(freelancer['role']!),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          )
          .toList(),
    );
  }
}
