import 'package:flutter/material.dart';
import 'package:kosehat_mobile/widgets/left_drawer.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autentikasi & Profil Pengguna'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: const Center(child: Text('Modul Autentikasi & Profil Pengguna')),
    );
  }
}
