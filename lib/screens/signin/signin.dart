import 'package:find_doctor/screens/congrats_screen/congratesScreen.dart';
import 'package:find_doctor/screens/signup/signup.dart';
import 'package:flutter/material.dart';

import '../../shared/app_CheckBox.dart';
import '../../shared/app_button.dart';
import '../../shared/textFieldApp.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  SignIn({Key? key}) : super(key: key);
  CheckBoxRow checkBoxRow = CheckBoxRow();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/teriaq.PNG'),
          ),
          // Container(
          //   clipBehavior: Clip.antiAlias,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(80),
          //     color: Colors.white,
          //   ),
          //   child: Image(
          //     image: AssetImage('assets/images/teriaq.PNG'),
          //     height: 160,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Sign in to your account",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.7)),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TeriaqTextField(
                      label: 'Email',
                      hint: 'Email',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email must not be empty';
                        }
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  TeriaqTextField(
                      label: 'Password', hint: 'Password', hide: true),
                  const SizedBox(
                    height: 10,
                  ),
                  checkBoxRow,
                  AppButton(
                      text: 'Sign in',
                      bottenColor: Colors.blue,
                      textColor: Colors.white,
                      borderradius: BorderRadius.circular(20),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CongratsScreen();
                        }));
                      }),
                ],
              )),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forget the password?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Or continue with',
            style:
                TextStyle(fontWeight: FontWeight.w800, color: Colors.black54),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue[900],
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Facebook',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: const [
                    Image(
                        image: AssetImage('assets/images/google.jpg'),
                        height: 30),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Google',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dont have an account?',
                style: TextStyle(color: Colors.black54),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ]),
      )),
    );
  }
}
