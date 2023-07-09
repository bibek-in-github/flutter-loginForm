import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Column,
        FontWeight,
        Image,
        MainAxisAlignment,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

// ignore: must_be_immutable
class LoginSignupHelper extends StatelessWidget {
  String headerName;
  LoginSignupHelper({required this.headerName, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          headerName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
        const SizedBox(height: 10.0),
        Image.asset(
          'assests/images/logo.jpg',
          height: 80.0,
          width: 80.0,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Bibek Code',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black38,
            fontSize: 25.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
