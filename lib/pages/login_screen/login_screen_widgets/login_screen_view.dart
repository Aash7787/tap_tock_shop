import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Login To Tap Shop',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                width: width * 0.85,
                height: height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person),
                    Text('Continue with Email / username')
                  ],
                ),
              ),
              Container(
                width: width * 0.85,
                height: height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone_android_outlined),
                    Text('Continue With PhoneNo')
                  ],
                ),
              ),
              Container(
                width: width * 0.85,
                height: height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.facebook),
                    Text('Continue With Facebook')
                  ],
                ),
              ),
              Container(
                width: width * 0.85,
                height: height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    Text('Continue with Google')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
