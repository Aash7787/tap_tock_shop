import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/login_screen/login_screen_widgets/login_screen_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const pageName = 'loginPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      body: Stack(
        children: [
          Align(alignment: Alignment.bottomCenter, child: LoginPageWidget()),
        ],
      ),
    );
  }
}
