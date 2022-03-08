import 'package:find_doctor/screens/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/app_CheckBox.dart';
import '../../shared/app_button.dart';
import '../../shared/textFieldApp.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  CheckBoxRow _checkBoxRow = CheckBoxRow();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white,
              ),
              child: Image(
                image: AssetImage('assets/images/teriaq.PNG'),
                height: 100.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Sign up for free",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7)),
            ),
            SizedBox(
              height: 30.h,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TeriaqTextField(
                        label: 'Name',
                        hint: 'Name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email must not be empty';
                          }
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
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
                      height: 20,
                    ),
                    _checkBoxRow,
                    AppButton(
                      text: 'Sign up',
                      borderradius: BorderRadius.circular(60),
                      textColor: Colors.white,
                      bottenColor: Colors.blue,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')));
                        }
                      },
                    ),
                  ],
                )),
            const SizedBox(
              height: 15,
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
                  'Already have an account?',
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return SignIn();
                      }));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
