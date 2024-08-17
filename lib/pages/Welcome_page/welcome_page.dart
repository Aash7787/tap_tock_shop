import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/Welcome_page/Welcome_page_widgets/welcome_page_view.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const pageName = 'welcomePage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      body: Stack(
        children: [
          Align(alignment: Alignment.bottomCenter, child: WelcomePageWidget()),
        ],
      ),
    );
  }
}
