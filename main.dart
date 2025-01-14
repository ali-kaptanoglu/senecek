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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const GoalSelectionScreen(),
    );
  }
}

class GoalSelectionScreen extends StatelessWidget {
  const GoalSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'What is your main goal?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              _GoalOption(
                icon: Icons.scale,
                text: 'I want to lose weight',
                color: const Color(0xFFFFF3E9),
                iconColor: Colors.orange,
                isSelected: true,
              ),
              const SizedBox(height: 12),
              _GoalOption(
                icon: Icons.fitness_center,
                text: 'I want to stay in shape',
                color: const Color(0xFFEDF4FF),
                iconColor: Colors.blue,
              ),
              const SizedBox(height: 12),
              _GoalOption(
                icon: Icons.restaurant_menu,
                text: 'I want to eat consciously',
                color: const Color(0xFFEFFAF0),
                iconColor: Colors.green,
              ),
              const SizedBox(height: 12),
              _GoalOption(
                icon: Icons.spa,
                text: 'I want to reduce stress',
                color: const Color(0xFFF3EFFF),
                iconColor: Colors.purple,
              ),
              const SizedBox(height: 12),
              _GoalOption(
                icon: Icons.local_hospital,
                text: 'Following medical advice',
                color: const Color(0xFFFFEEF0),
                iconColor: Colors.red,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _GoalOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;
  final bool isSelected;

  const _GoalOption({
    required this.icon,
    required this.text,
    required this.color,
    required this.iconColor,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: isSelected
          ? Border.all(color: Colors.deepOrange, width: 2)
          : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
