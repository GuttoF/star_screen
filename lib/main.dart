import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recype',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.teal[700],
          ),
          iconTheme: IconThemeData(color: Colors.teal[700]),
        ),
      ),
      home: const HighlightedColumnScreen(),
    );
  }
}

class HighlightedColumnScreen extends StatelessWidget {
  const HighlightedColumnScreen({super.key});

  Widget buildStarRating() {
    return Row(
      children: List.generate(
        5,
        (index) => const Icon(Icons.star, color: Colors.amber, size: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Left column
            Expanded(
              flex: 1,
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Strawberry Pavlova',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              
                              color: Colors.teal,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                        'It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          buildStarRating(),
                          const SizedBox(width: 10),
                          const Text('NaN Reviews'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.teal[50],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            RecipeInfo(icon: Icons.schedule, label: 'PREP:', value: '25 min'),
                            RecipeInfo(icon: Icons.timer, label: 'COOK:', value: '1 hr'),
                            RecipeInfo(icon: Icons.restaurant, label: 'FEEDS:', value: '4–6'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Right column
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recipe Instructions',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lalalalalalala.',
                    ),
                    SizedBox(height: 20),
                    Placeholder(fallbackHeight: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const RecipeInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.teal),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        Text(value),
      ],
    );
  }
}
