import 'package:basic_prototype/pages/authentication/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyWidgetTree extends StatelessWidget {
  const MyWidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return const SignUpPage();
      },
    );
  }
}
