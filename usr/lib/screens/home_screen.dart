import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for health tips
    final List<Map<String, String>> healthTips = [
      {
        'title': 'Stay Hydrated',
        'content': 'Drinking enough water each day is crucial for many reasons: to regulate body temperature, keep joints lubricated, prevent infections, deliver nutrients to cells, and keep organs functioning properly.',
        'author': 'Dr. Smith',
        'time': '2 hours ago',
      },
      {
        'title': 'Morning Stretching',
        'content': 'Stretching in the morning helps improve your posture, increases blood flow to your muscles, and can give you a boost of energy to start your day.',
        'author': 'Yoga Daily',
        'time': '5 hours ago',
      },
      {
        'title': 'Balanced Diet',
        'content': 'A balanced diet supplies the nutrients your body needs to work effectively. Without balanced nutrition, your body is more prone to disease, infection, fatigue, and low performance.',
        'author': 'Nutritionist Jane',
        'time': '1 day ago',
      },
      {
        'title': 'Mental Health Matters',
        'content': 'Taking care of your mental health is just as important as your physical health. Practice mindfulness, take breaks, and talk to someone if you feel overwhelmed.',
        'author': 'Mindful Living',
        'time': '1 day ago',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Health Feed"),
      ),
      body: ListView.builder(
        itemCount: healthTips.length,
        itemBuilder: (context, index) {
          final tip = healthTips[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                        child: Text(tip['author']![0]),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tip['author']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            tip['time']!,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    tip['title']!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    tip['content']!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.share_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
