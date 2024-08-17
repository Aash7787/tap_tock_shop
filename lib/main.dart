import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/Welcome_page/welcome_page.dart';
import 'package:tap_tock_shop/pages/messages/all_messages_page/all_messages_page.dart';
import 'package:tap_tock_shop/pages/profile%20page/profile_page.dart';
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
      initialRoute: ProfilePage.pageName,
    );
  }
}
