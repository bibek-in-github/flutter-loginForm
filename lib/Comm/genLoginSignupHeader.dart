import 'package:flutter/material.dart';

class genLoginSignupHeader extends StatelessWidget {
  String headerName;
   genLoginSignupHeader({ required this.headerName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Text(
            headerName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 40.0,
            ),
          ),
          SizedBox(height: 10.0),
          Image.asset(
            'assests/images/logo.jpg',
            height: 80.0,
            width: 80.0,
          ),
          SizedBox(height: 10.0),
          Text(
            'Bibek Code',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
