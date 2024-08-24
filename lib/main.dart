import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/Welcome_page/welcome_page.dart';
import 'package:tap_tock_shop/routes/on_generate_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: WelcomePage.pageName,
    );
  }
}
