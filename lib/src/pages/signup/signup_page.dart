// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BorderSide,
        BoxDecoration,
        BuildContext,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Icon,
        Icons,
        ListView,
        MainAxisAlignment,
        OutlineInputBorder,
        Padding,
        Radius,
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
import 'package:flutter/services.dart' as formatter;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:login_form/src/database/index.dart';
import 'package:login_form/src/pages/signup/signup_view_model.dart';
import 'package:login_form/src/validators/auth_validators.dart';
import 'package:toast/toast.dart';
// import 'package:toast/toast.dart';

import '../../app.dart';
import '../../widgets/atom/input_field.dart';
import '../../widgets/molecules/index.dart';
import '../login_page.dart';

class SignupPage extends StatelessWidget with SignupViewModel, AuthValidator {
  static const routeName = "signup_page";
  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();

  signUp(BuildContext context) {
    ToastContext().init(context);
    String uid = _conUserId.text;
    String uName = _conUserName.text;
    String email = _conEmail.text;
    String password = _conPassword.text;
    String cPassword = _conCPassword.text;

    if (uid.isEmpty) {
      alertDialog(context, "Please Enter User ID");

      // Toast.show("Please Enter User ID",
      //       duration: Toast.lengthLong, gravity: Toast.bottom);
    } else if (uName.isEmpty) {
      alertDialog(context, "Please Enter User Name");
    } else if (email.isEmpty) {
      alertDialog(context, "Please Enter Email");
    } else if (password.isEmpty) {
      alertDialog(context, "Please Enter Password");
    } else if (cPassword.isEmpty) {
      alertDialog(context, "Please Enter Confirm Password");
    }
  }

  SignupPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: ListView(
          children: [
            LoginSignupHelper(
              headerName: 'Signin',
            ),
            FormBuilder(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextInput(
                    prefixIcon: const Icon(Icons.person_outline),
                    label: "User Name",
                    name: "user_name",
                    validator: userNameValidator,
                    hintText: "Enter your name",
                    required: true,
                    keyboardType: TextInputType.name,
                    showCounter: false,
                    maxLength: 20,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextInput(
                    prefixIcon: const Icon(Icons.email),
                    label: "Email",
                    name: "email",
                    validator: emailValidator,
                    hintText: "Enter your Email",
                    required: true,
                    keyboardType: TextInputType.emailAddress,
                    showCounter: false,
                    maxLength: 20,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextInput(
                    prefixIcon: const Icon(Icons.lock),
                    label: "Password",
                    name: "password",
                    hintText: "Enter your password",
                    obscureText: true,
                    required: true,
                    validator: passwordValidator,
                    keyboardType: TextInputType.visiblePassword,
                    showCounter: false,
                    maxLength: 20,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextButton(
                onPressed: onRegister,
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
      ),
    );
  }
}
