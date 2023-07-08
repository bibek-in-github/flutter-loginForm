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
        Row,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextButton,
        TextEditingController,
        TextInputType,
        TextStyle,
        Widget;
import 'package:login_form/Comm/genLoginSignupHeader.dart';
import 'package:login_form/Comm/gen_text_form_field.dart';
import 'package:login_form/Screens/SignupForm.dart';

class LoginForm extends StatelessWidget {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with signup'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginSignupHeader(
              headerName: 'Login',
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
              controller: _conPassword,
              hintname: 'Password',
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
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Does not have account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignupForm(),
                      ),
                    );
                  },
                  child: const Text(
                    'Signup',
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
