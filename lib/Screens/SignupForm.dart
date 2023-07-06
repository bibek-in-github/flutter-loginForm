import 'package:flutter/material.dart';
import 'package:login_form/Comm/genTextFormField.dart';
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
        title: Text('Login with Signup'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0),
                Text(
                  'Signup',
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
                getTextFormField(
                  controller: _conUserId,
                  hintname: 'User ID',
                  icon: Icons.person,
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 5.0,
                ),
                 getTextFormField(
                  controller: _conUserName,
                  hintname: 'User Name',
                  icon: Icons.person_outline,
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: 5.0,
                ),
                getTextFormField(
                  controller: _conEmail,
                  hintname: 'Email',
                  icon: Icons.email,
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 5.0,
                ),
                
                getTextFormField(
                  controller: _conPassword,
                  hintname: 'Password',
                  icon: Icons.lock,
                  isObscureText: true,
                  inputType: TextInputType.visiblePassword,
                ),
                 SizedBox(
                  height: 5.0,
                ),
                  getTextFormField(
                  controller: _conCPassword,
                  hintname: 'Confirm Password',
                  icon: Icons.lock,
                  isObscureText: true,
                  inputType: TextInputType.visiblePassword,
                ),
             
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Does you have account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LoginForm(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
