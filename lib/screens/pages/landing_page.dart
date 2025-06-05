import 'package:flutter/material.dart';
import '../auth/register_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Hero Section
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 48,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Yetenekli freelancerlarla\ndaha çok iş yapın.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Bionluk, yetenekli freelancerların kendilerine uygun işletmeler ve girişimlerle\n'
                            'buluştuğu, topluluk mantığıyla işleyen özgürlükçü bir çalışma platformudur.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                              backgroundColor: Colors.red,
                            ),
                            child: const Text('Hadi Başla'),
                          ),
                        ],
                      ),
                    ),

                    // Neden Freelancer?
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 32,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Neden Freelancer?',
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Geleceğin "çalışma" modeliyle bugünden tanışın.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 32),
                          Wrap(
                            spacing: 32,
                            runSpacing: 32,
                            alignment: WrapAlignment.center,
                            children: [
                              _featureCard(
                                imageUrl:
                                    'https://gcdn.bionluk.com/site/general/search_bi.png',
                                title: 'Sınırsızlık, Özgürleştirir',
                                description:
                                    'Sınırsız düşünebilmen için bütün sınırları kaldırdık. Artık yalnızca bulunduğun '
                                    'bölgeden değil dünyanın her yerinden global yeteneklerle, özgürce çalışabilmen için...',
                              ),
                              _featureCard(
                                imageUrl:
                                    'https://gcdn.bionluk.com/site/general/contact-order_bi.png',
                                title: 'Bakış Açını Genişlet',
                                description:
                                    'El elden, göz gözden üstündür. Hedef kitleni ne kadar genişletmek istersen, '
                                    'o kadar farklı gözle bakmayı öğrenirsin. Biz senin için her pencereyi açtık, bakmak sana kaldı.',
                              ),
                              _featureCard(
                                imageUrl:
                                    'https://gcdn.bionluk.com/site/general/done_bi.png',
                                title: 'Aklın Yolu Free',
                                description:
                                    'Becerikli bir işveren, kaynaklarını en verimli nasıl kullanacağını bilen iş verendir. '
                                    'Kaynaklarını olabildiğince verimli kullanmak adına freelancer’lara şans verin; '
                                    'göreceksin ki her akıl, her işe değer katar.',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // CTA
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Hemen Kaydol',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _featureCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Image.network(imageUrl, height: 160),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
