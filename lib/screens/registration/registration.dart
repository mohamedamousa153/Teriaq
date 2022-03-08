import 'package:find_doctor/screens/signin/signin.dart';
import 'package:find_doctor/screens/signup/signup.dart';
import 'package:find_doctor/screens/welcome/welcomescreen.dart';
import 'package:flutter/material.dart';

import '../../shared/app_button.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: AssetImage('assets/images/teriaq.PNG'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),
                height: 150,
              ),
              SizedBox(
                height: 200,
              ),
              Text(
                "Welacome To Teriag!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 50,
              ),
              AppButton(
                text: "Sign Up",
                bottenColor: Colors.blue,
                textColor: Colors.white,
                borderradius: BorderRadius.circular(60),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              AppButton(
                text: "Sign in",
                bottenColor: Colors.white,
                textColor: Colors.blue,
                borderradius: BorderRadius.circular(60),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
