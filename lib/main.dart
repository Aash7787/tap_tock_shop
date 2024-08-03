import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/login_screen/login_page.dart';
import 'package:tap_tock_shop/pages/sign_up_page.dart';
import 'package:tap_tock_shop/routes/on_generate_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: LoginPage.pageName,
    );
  }
}
