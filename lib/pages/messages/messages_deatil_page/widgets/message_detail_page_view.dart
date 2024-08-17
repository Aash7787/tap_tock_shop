import 'package:flutter/material.dart';

class MessageDetailPageView extends StatelessWidget {
  const MessageDetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.84,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
              )),
          Positioned(
            top: height * 0.06,
            left: width * 0.06,
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white, size: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    maxRadius: 30,
                    backgroundImage: AssetImage('assets/images/man_pic_2.jpg'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Ali Hamza',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
