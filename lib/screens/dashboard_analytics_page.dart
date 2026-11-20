import 'package:flutter/material.dart';
import 'package:kosehat_mobile/widgets/left_drawer.dart';

class DashboardAnalyticsPage extends StatelessWidget {
  const DashboardAnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard & Impact Analytics'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: const Center(child: Text('Modul Dashboard & Impact Analytics')),
    );
  }
}
