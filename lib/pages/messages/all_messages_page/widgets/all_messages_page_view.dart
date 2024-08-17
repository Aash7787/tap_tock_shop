import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/messages/all_messages_page/widgets/chat_tile_design_widget.dart';
import 'package:tap_tock_shop/pages/messages/messages_deatil_page/message_detail_page.dart';

class AllMessagesPageView extends StatelessWidget {
  const AllMessagesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:height, :width) = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.88,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 280),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MessageDetailPage(),
                                ));
                          },
                          child: ChatTileDesignWidget()),
                      ChatTileDesignWidget(),
                      ChatTileDesignWidget(),
                      ChatTileDesignWidget(),
                      ChatTileDesignWidget(),
                    ],
                  ),
                ),
              )),
          Positioned(
            top: height * 0.05,
            left: width * 0.06,
            child: const Row(
              children: [
                Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white, size: 25),
                SizedBox(width: 10),
                Text(
                  'Messages',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
