// ignore: avoid_web_libraries_in_flutter
import 'dart:js';

import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Colors,
        Container,
        EdgeInsets,
        Icons,
        ListView,
        MainAxisAlignment,
        Row,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextButton,
        TextEditingController,
        TextInputType,
        TextStyle,
        Widget;
import 'package:login_form/src/database/index.dart';
// import 'package:toast/toast.dart';

import '../app.dart';
import '../widgets/molecules/index.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  static const routeName = "signup_page";
  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();

  signUp() {
    String uid = _conUserId.text;
    String uName = _conUserName.text;
    String email = _conEmail.text;
    String password = _conPassword.text;
    String cPassword = _conCPassword.text;

    if (uid.isEmpty) {
      alertDialog(context as BuildContext, "Please Enter User ID");

      // Toast.show("Please Enter User ID",
      //       duration: Toast.lengthLong, gravity: Toast.bottom);
    } else if (uName.isEmpty) {
      alertDialog(context as BuildContext, "Please Enter User Name");
    } else if (email.isEmpty) {
      alertDialog(context as BuildContext, "Please Enter Email");
    } else if (password.isEmpty) {
      alertDialog(context as BuildContext, "Please Enter Password");
    } else if (cPassword.isEmpty) {
      alertDialog(context as BuildContext, "Please Enter Confirm Password");
    }
  }

  SignupPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Signup'),
      ),
      body: ListView(
        children: [
          LoginSignupHelper(
            headerName: 'Signin',
          ),
          CustomTextFormField(
            controller: _conUserId,
            hintname: 'User ID',
            icon: Icons.person,
            inputType: TextInputType.number,
          ),
          const SizedBox(
            height: 5.0,
          ),
          CustomTextFormField(
            controller: _conUserName,
            hintname: 'User Name',
            icon: Icons.person_outline,
            inputType: TextInputType.name,
          ),
          const SizedBox(
            height: 5.0,
          ),
          CustomTextFormField(
            controller: _conEmail,
            hintname: 'Email',
            icon: Icons.email,
            inputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 5.0,
          ),
          CustomTextFormField(
            controller: _conPassword,
            hintname: 'Password',
            icon: Icons.lock,
            isObscureText: true,
            inputType: TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 5.0,
          ),
          CustomTextFormField(
            controller: _conCPassword,
            hintname: 'Confirm Password',
            icon: Icons.lock,
            isObscureText: true,
            inputType: TextInputType.visiblePassword,
          ),
          Container(
            margin: const EdgeInsets.all(30.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: TextButton(
              onPressed: signUp(),
              child: const Text(
                'Signup',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Does you have account?'),
              TextButton(
                onPressed: () {
                  mainNavigator.currentState?.pushNamedAndRemoveUntil(
                      LoginPage.routeName, (f) => false);
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
