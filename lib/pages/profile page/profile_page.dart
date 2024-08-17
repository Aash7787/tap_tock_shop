import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const pageName = 'profilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    var screenHeight = screen.height;

    var screenWidth = screen.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: Stack(
                children: [
                  Container(
                      height: screenHeight * 0.35,
                      width: screenWidth * 1.0,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/shoes.jpg'),
                              fit: BoxFit.cover)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        child: Container(
                          color: Colors.black12,
                        ),
                      )),
                  Align(
                    alignment: const Alignment(0, 1.35),
                    child: Container(
                      height: screenHeight * 0.18,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white),
                          child:  Align(
                      alignment: Alignment(0, -4),
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        maxRadius: screenWidth * 0.15,
                        backgroundImage: AssetImage('assets/images/images.png'),
                      )),
                    ),
                  ),
                 
                ],
              ),
              expandedHeight: 290,
              backgroundColor: Colors.transparent,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: screenHeight * 0.72,
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}
