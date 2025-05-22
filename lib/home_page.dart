import 'package:flutter/material.dart';
import 'package:clerk_flutter/clerk_flutter.dart'; // Necesario para ClerkUserButton y signOut()

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Bienvenido a tu App!'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          const ClerkUserButton(),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Cerrar sesión',
            onPressed: () async {
            //  await Clerk().signOut();
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Has iniciado sesión con éxito!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Un espacio entre el texto
            Text(
              'Ahora puedes empezar a construir tu aplicación.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}