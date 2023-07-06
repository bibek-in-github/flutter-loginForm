import 'package:flutter/material.dart';
import 'package:login_form/Comm/genTextFormField.dart';
import 'package:login_form/Screens/SignupForm.dart';

class LoginForm extends StatelessWidget {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login with signup'),
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
                  'Login',
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
                  controller: _conPassword,
                  hintname: 'Password',
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
                      'Login',
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
                      Text('Does not have account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SignupForm(),
                            ),
                          );
                        },
                        child: Text(
                          'Signup',
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
