
import 'package:assignment/screens/login.dart';
import 'package:assignment/screens/main_page.dart';
import 'package:assignment/widget/big_text.dart';
import 'package:assignment/widget/small_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var code = "";
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(Icons.arrow_back)),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0488F5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text("help"),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                BigText(
                  text: "We just sent you an SMS",
                ),
                const SizedBox(height: 10),
                SmallText(
                  text: "To login in enter the security code sent to ",
                  color: Colors.grey,
                  size: 20,
                ),
                const SizedBox(height: 20),
                Pinput(
                  length: 6,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  onChanged: (value) {
                    code = value;
                  },
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Get the verification ID and user-entered OTP

                      // Create a PhoneAuthCredential using the verification ID and OTP
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: LoginScreen.verify,
                              smsCode: code);

                      try {
                        // Sign in with the credential
                        await FirebaseAuth.instance
                            .signInWithCredential(credential);

                        // Authentication successful, navigate to the next screen
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MainPage()));
                      } catch (e) {
                        // Handle authentication failure
                        // Show an error message to the user
                      }
                    },
                    child: BigText(
                      text: "Continue",
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0488F5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
