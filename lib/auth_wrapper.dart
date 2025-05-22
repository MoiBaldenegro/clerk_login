import 'package:clerk_flutter/clerk_flutter.dart';
import 'package:flutter/material.dart';

import 'package:clerk_login/home_page.dart';


class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ClerkErrorListener(
      child: ClerkAuthBuilder(
        signedInBuilder: (BuildContext context, ClerkAuthState authState) {
          return const HomePage(); 
        },
        signedOutBuilder: (BuildContext context, ClerkAuthState authState) {
          return const ClerkAuthentication();
        },
      ),
    );
  }
}