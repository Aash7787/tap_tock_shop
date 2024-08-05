import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      required this.hintText,
      this.width = 350,
      this.flex = -1,
      this.radius = 50,
      required this.obscureText});

  final String hintText;
  final double width;
  final double radius;
  final int flex;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: SizedBox(
        width: width,
        child: TextFormField(
          onTapAlwaysCalled: true,
          obscureText: obscureText,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
            filled: true,
            fillColor: Colors.blue.shade100,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
