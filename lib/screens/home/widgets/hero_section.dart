import 'package:flutter/material.dart';
import '../../../components/button_primary.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Yetenekli Freelancerlarla Daha Fazla İş Başarın",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Devaern, özgür çalışan yeteneklerle işletmeleri bir araya getiren, geleceğin çalışma modelini bugünden sunan freelance platformudur.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonPrimary(text: "Hadi Başla", onPressed: () {}),
                    const SizedBox(width: 16),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Neden Freelancer?"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
