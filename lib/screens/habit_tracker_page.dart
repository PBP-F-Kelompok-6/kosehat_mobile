import 'package:flutter/material.dart';
import 'package:kosehat_mobile/widgets/left_drawer.dart';

class HabitTrackerPage extends StatelessWidget {
  const HabitTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health & Habit Tracker'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: const Center(child: Text('Modul Health & Habit Tracker')),
    );
  }
}
