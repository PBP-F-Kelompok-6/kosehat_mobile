import 'package:flutter/material.dart';
import 'package:kosehat_mobile/widgets/left_drawer.dart';

class RecipeCatalogPage extends StatelessWidget {
  const RecipeCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Resep & Eco-Mindfulness'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: const Center(child: Text('Modul Katalog Resep & Eco-Mindfulness')),
    );
  }
}
