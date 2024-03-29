import 'package:assignment/screens/main_page.dart';
import 'package:assignment/widget/uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignUp(String email, String password) async {
    if (email == "" && password == "") {
      return UiHelper.customAlertDilog('enter the reqired details', context);
    } else {
      UserCredential? userCredential;
      try {
        userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainPage())));
      } on FirebaseAuthException catch (e) {
        return UiHelper.customAlertDilog(e.code.toString(), context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup page"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        UiHelper.customTextField(emailController, Icons.mail_outline_outlined,
            "Enter your Email here", false),
        UiHelper.customTextField(passwordController, Icons.key_outlined,
            "Enter your password here", true),
        SizedBox(height: 30),
        RichText(
          text: TextSpan(
              text: "already have an account? ",
              style: TextStyle(
                color: Colors.grey[500],
              ),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => (Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ))),
                  text: "login",
                  style: TextStyle(),
                ),
              ]),
        ),
        SizedBox(height: 20),
        UiHelper.customElevatedButton(() {
          SignUp(emailController.text.toString(),
              passwordController.text.toString());
        }, "Sign Up")
      ]),
    );
  }
}
