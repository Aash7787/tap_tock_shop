import 'dart:ui';

import 'package:flutter/material.dart';

class ReactsButtons extends StatelessWidget {
  const ReactsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Stack(
      
      children: [
        
         Positioned(
            top: height * 0.41,
            left: width * 0.85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  height: height * 0.45,
                  width: width * 0.13,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(360)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.attach_money_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            '3400',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            '1200',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.comment,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            '34',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.switch_access_shortcut_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            '102',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}