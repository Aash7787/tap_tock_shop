import 'package:flutter/material.dart';

class ChatTileDesignWidget extends StatelessWidget {
  const ChatTileDesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:height, :width) = MediaQuery.sizeOf(context);
    return Align(
      alignment: Alignment(0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.09,
            width: width * 0.95,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.03,
                  width: width * 0.01,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/images/man_pic_2.jpg'),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                    'Ali Hamza',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    '12m',
                    style: TextStyle(
                        color: Colors.black12,
                        fontSize: 15,
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
