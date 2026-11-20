import 'package:flutter/material.dart';
import 'package:kosehat_mobile/screens/menu.dart';
import 'package:kosehat_mobile/screens/authentication_page.dart';
import 'package:kosehat_mobile/screens/meal_planner_page.dart';
import 'package:kosehat_mobile/screens/habit_tracker_page.dart';
import 'package:kosehat_mobile/screens/dashboard_analytics_page.dart';
import 'package:kosehat_mobile/screens/recipe_catalog_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'KoSehat Mobile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Sustainable Living Tracker for UI Campus Life',
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Autentikasi & Profil'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AuthenticationPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.restaurant_menu),
            title: const Text('Meal Planner & Eco-Diet'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MealPlannerPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: const Text('Health & Habit Tracker'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HabitTrackerPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.analytics_outlined),
            title: const Text('Dashboard & Impact Analytics'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardAnalyticsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_outlined),
            title: const Text('Katalog Resep & Eco-Mindfulness'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecipeCatalogPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
