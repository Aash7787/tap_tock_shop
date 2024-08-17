import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_tock_shop/pages/messages/messages_deatil_page/widgets/message_detail_page_view.dart';

class MessageDetailPage extends StatelessWidget {
  const MessageDetailPage({super.key});

  static const pageName = 'messageDetailPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MessageDetailPageView(),
    );
  }
}
