import 'package:flutter/material.dart';
import 'ai_page.dart';
import 'energy_page.dart';
import 'space_page.dart';
import 'satellites_page.dart';

void main() {
  runApp(const EcoscienceFoundationApp());
}

class EcoscienceFoundationApp extends StatelessWidget {
  const EcoscienceFoundationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecoscience Foundation International',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/ai': (context) => const AiPage(),
        '/energy': (context) => const EnergyPage(),
        '/space': (context) => const SpacePage(),
        '/satellites': (context) => const SatellitesPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecoscience Foundation International'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Advancing Environmental Science Through Technology',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  FocusAreaCard(
                    title: 'AI',
                    description: 'Artificial Intelligence for environmental monitoring and prediction',
                    icon: Icons.smart_toy,
                    route: '/ai',
                  ),
                  FocusAreaCard(
                    title: 'Energy',
                    description: 'Sustainable energy solutions for a greener future',
                    icon: Icons.bolt,
                    route: '/energy',
                  ),
                  FocusAreaCard(
                    title: 'Space',
                    description: 'Space technology for global environmental observation',
                    icon: Icons.rocket_launch,
                    route: '/space',
                  ),
                  FocusAreaCard(
                    title: 'Satellites',
                    description: 'Satellite systems for real-time earth monitoring',
                    icon: Icons.satellite,
                    route: '/satellites',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FocusAreaCard extends StatelessWidget {
  const FocusAreaCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
  });

  final String title;
  final String description;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ),
    );
  }
}