import 'package:flutter/material.dart';

class getTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintname;
  final IconData icon;
  final bool isObscureText;
  const getTextFormField(
      {required this.controller,
      required this.hintname,
      required this.icon,
       this.isObscureText = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      // margin: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          prefixIcon: Icon(icon),
          hintText: hintname,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
