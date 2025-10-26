import 'package:flutter/material.dart';

class SatellitesPage extends StatelessWidget {
  const SatellitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Satellites - Real-Time Monitoring'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.satellite, size: 64, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Satellite Systems for Earth Monitoring',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Deploying satellite constellations for continuous, real-time monitoring of Earth\'s ecosystems and climate patterns.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Key Initiatives:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('- High-resolution imaging for deforestation tracking'),
            const Text('- Ocean temperature and pollution monitoring'),
            const Text('- Atmospheric composition analysis'),
            const Text('- Disaster response and recovery assessment'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}