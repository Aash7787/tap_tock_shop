import 'package:flutter/material.dart';
import 'package:tap_tock_shop/pages/sign_up_page/blue_text_from_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const pageName = 'signUpPage';
  static const url =
      'https://images.unsplash.com/photo-1515378960530-7c0da6231fb1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: const Stack(
        children: [
          UpperHalf(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: LowerHalf(),
            ),
          ),
        ],
      ),
    );
  }
}

class UpperHalf extends StatelessWidget {
  static const _flex = 4;

  static const url =
      'https://images.unsplash.com/photo-1515378960530-7c0da6231fb1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  const UpperHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: _flex,
      child: Container(
        height: 380,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(url),
          ),
          borderRadius: BorderRadius.only(),
        ),
      ),
    );
  }
}

class LowerHalf extends StatelessWidget {
  static const _flex = 6;

  static const double _containerRadius = 35;

  static const _faceBookLogoSize = 40.0;
  static const _googleLogoSize = 30.0;

  const LowerHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: _flex,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_containerRadius),
            topRight: Radius.circular(_containerRadius),
          ),
        ),
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Sign up',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const MyTextFormField(
              hintText: 'Email',
              obscureText: false,
            ),
            const MyTextFormField(
              hintText: 'Password',
              obscureText: true,
            ),
            const MyTextFormField(
              hintText: 'Confirm password',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(
                  Size(180, 50),
                ),
                backgroundColor: WidgetStatePropertyAll(
                  Colors.blue,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Sign up',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    '\'Login in\'',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: _googleLogoSize,
                  height: _googleLogoSize,
                  child: Image.asset('assets/image/google.png'),
                ),
                SizedBox(
                  width: _faceBookLogoSize,
                  height: _faceBookLogoSize,
                  child: Image.asset('assets/image/facebook.png'),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
