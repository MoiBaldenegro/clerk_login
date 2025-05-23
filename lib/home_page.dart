import 'package:flutter/material.dart';
import 'package:clerk_flutter/clerk_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String githubUrl = 'github.com/MoiBaldenegro';

  @override
  Widget build(BuildContext context) {
    return ClerkAuthBuilder(
      signedInBuilder: (BuildContext context, ClerkAuthState authState) {
        final user = authState.user;

        if (user == null) {
          return const Center(child: Text('Error: No se encontró la información del usuario.'));
        }

        final imageUrl = user.imageUrl;
        final username = user.firstName ?? 'Usuario';

        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ClerkUserButton(),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    '¡Has iniciado sesión con éxito!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          imageUrl != null && imageUrl.isNotEmpty
                              ? Image.network(imageUrl, width: 150, height: 100, fit: BoxFit.cover)
                              : const Icon(Icons.account_circle, size: 100),
                          const SizedBox(height: 20),
                          Text(
                            'Bienvenido $username',
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Aquí puedes empezar a construir tu app con Clerk',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                ElevatedButton.icon(
                      onPressed: () async {
                        final Uri url = Uri.parse(githubUrl);
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                      },
                      icon: const Icon(Icons.code),
                      label: Text('$githubUrl'),
                    ),
                  const SizedBox(height: 20),
                  const Text(
                    'Demo Clerk Login by Moibaldenegro',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
