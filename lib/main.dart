import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Receta')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Empanadas Las Calidosas',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Empanadas Las Calidosas es un local de comida rápida en Medellín que se especializa en empanadas y preparaciones fritas al estilo típico colombiano.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            const Text('170 Reviews'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildInfoColumn(
                              Icons.access_time,
                              'PREP:',
                              '5 min',
                            ),
                            _buildInfoColumn(
                              Icons.outdoor_grill,
                              'COOK:',
                              '30 min',
                            ),
                            _buildInfoColumn(Icons.restaurant, 'FEEDS:', '4-6'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://web.didiglobal.com/_next/image/?url=https%3A%2F%2Fimg0.didiglobal.com%2Fstatic%2Fsoda_public%2Fimg_4b425cf7a60825662fe3ed50202ab925.jpg4_3&w=3840&q=75',
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 4.0),
        Text(
          label,
          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        Text(value, style: const TextStyle(fontSize: 12.0)),
      ],
    );
  }
}
