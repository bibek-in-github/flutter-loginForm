// ignore: file_names
import 'package:flutter/material.dart'
    show
        AppBar,
        Axis,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Colors,
        Column,
        Container,
        EdgeInsets,
        Icons,
        MainAxisAlignment,
        MaterialPageRoute,
        Navigator,
        Route,
        Row,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextButton,
        TextEditingController,
        TextInputType,
        TextStyle,
        Widget;
import 'package:login_form/Comm/genLoginSignupHeader.dart';
import 'package:login_form/Comm/gen_text_form_field.dart';
import 'package:login_form/Screens/loginform.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Signup'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginSignupHeader(
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
                onPressed: () {},
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
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => LoginForm()),
                        (Route<dynamic> route) => false);
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
      ),
    );
  }
}
