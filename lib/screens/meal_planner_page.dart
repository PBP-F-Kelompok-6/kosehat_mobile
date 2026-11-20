import 'package:flutter/material.dart';
import 'package:kosehat_mobile/widgets/left_drawer.dart';

class MealPlannerPage extends StatelessWidget {
  const MealPlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Planner & Eco-Diet'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: const Center(child: Text('Modul Meal Planner & Eco-Diet')),
    );
  }
}
