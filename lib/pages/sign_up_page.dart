import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const pageName = 'signUpPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UpperHalf(),
    );
  }
}

class UpperHalf extends StatelessWidget {
  const UpperHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: const Text('Welcome'),
      ),
    );
  }
}
