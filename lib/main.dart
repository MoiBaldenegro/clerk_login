import 'package:flutter/material.dart';
import 'package:clerk_flutter/clerk_flutter.dart'; 
import 'package:clerk_login/auth_wrapper.dart';

// const String clerkPublishableKey = 'CLERK_API_PUBLISHABLE_KEY';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ClerkAuth(
      config: ClerkAuthConfig(
        publishableKey: clerkPublishableKey,
      ),
      child: MaterialApp(
        title: 'Clerk + Flutter M16 Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const AuthWrapper(),
      ),
    );
  }
}
