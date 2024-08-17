import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter/widgets.dart';
import 'package:tap_tock_shop/pages/For_you_reels_page/home_page.dart';

import '../../messages/all_messages_page/all_messages_page.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({super.key});

  @override
  State<WelcomePageWidget> createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget> {
  final formState = GlobalKey<FormState>();

  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  // void addGoggleUser() async {
  //   UserCredential userCredential =
  //       await firebaseAuthentications.signInWithGoogle();

  //   developer.log("User name .... ${userCredential.user!.displayName!}");
  // }

  @override
  Widget build(BuildContext context) {
    final Size(:height, :width) = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Positioned(
          //   left: width*0.1,
          //   top: height*0.02,
          //   child: SizedBox(height: height*0.35,child: Image.asset('assets/gif/ecom_image_2.gif',fit: BoxFit.cover,),)),
          Positioned(
              left: width * 0.01,
              top: height * 0.02,
              child: SizedBox(
                height: height * 0.3,
                child: Image.asset(
                  'assets/images/ecom_image_3.gif',
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: height * 0.35,
              child: Container(
                height: height * 0.7,
                width: width * 1.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 178, 63),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0.0, 0.26),
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              )),
          Positioned(
              top: height * 0.38,
              child: Container(
                height: height * 0.65,
                width: width * 1.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 212, 146),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0.0, 0.26),
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              )),
          Positioned(
              top: height * 0.42,
              child: Container(
                height: height * 0.6,
                width: width * 1.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 234, 202),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0.0, 0.26),
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              )),
          Positioned(
              top: height * 0.5,
              left: width * 0.1,
              child: const Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: height * 0.56,
              left: width * 0.1,
              child: const Text(
                '''All You Need, Just a Click Away. 
Explore our vast selection''',
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
          Positioned(
              top: height * 0.68,
              left: width * 0.1,
              child: SizedBox(
                  width: width * 0.8,
                  height: height * 0.06,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )))),
          Positioned(
              top: height * 0.77,
              left: width * 0.1,
              child: SizedBox(
                  width: width * 0.8,
                  height: height * 0.06,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePageView()
                                ));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )))),
          Positioned(
              left: width * 0.01,
              top: height * 0.88,
              child: SizedBox(
                height: height * 0.3,
                child: Image.asset(
                  'assets/images/particles.gif',
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              left: width * 0.25,
              top: height * 0.88,
              child: Container(
                height: height * 0.003,
                width: width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
              )),
        ],
      ),
    );
  }
}
