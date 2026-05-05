import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MTT الوطني',
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  final List<Map<String, dynamic>> items = const [
    {"title": "المشتركين", "icon": Icons.people},
    {"title": "التقارير", "icon": Icons.bar_chart},
    {"title": "المستخدمين", "icon": Icons.person},
    {"title": "SMS", "icon": Icons.message},
    {"title": "مزامنة", "icon": Icons.sync},
    {"title": "الإعدادات", "icon": Icons.settings},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MTT الوطني"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(items[index]['icon'], size: 40, color: Colors.blue),
                const SizedBox(height: 10),
                Text(items[index]['title']),
              ],
            ),
          );
        },
      ),
    );
  }
}
