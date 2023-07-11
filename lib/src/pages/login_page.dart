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
import '../app.dart';
import '../widgets/molecules/index.dart';
import 'signup/signup_page.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "login_page";

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  LoginPage({super.key});

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
            LoginSignupHelper(
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
                    mainNavigator.currentState?.pushNamed(SignupPage.routeName);
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
