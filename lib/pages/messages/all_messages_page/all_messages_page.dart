import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_tock_shop/pages/messages/all_messages_page/widgets/all_messages_page_view.dart';

class AllMessagesPage extends StatelessWidget {
  const AllMessagesPage({super.key});

  static const pageName = 'allMessagesPage';

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
        body: Center(child: AllMessagesPageView()));
  }
}
