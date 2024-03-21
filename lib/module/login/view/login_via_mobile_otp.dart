import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gram/module/room/view/room_screeeen.dart';

class LoginViaMobileOtp extends StatefulWidget {
  const LoginViaMobileOtp({super.key});

  @override
  State<LoginViaMobileOtp> createState() => _LoginViaMobileOtpState();
}

class _LoginViaMobileOtpState extends State<LoginViaMobileOtp> {
  TextEditingController mobilenumberController = TextEditingController();

  TextEditingController mobileotpController = TextEditingController();

  bool isVisible = false;

  late String verificationID;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    double width = MediaQuery.of(context).size.width; //424
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 16, bottom: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Log in via Mobile Otp',
                  style: GoogleFonts.comfortaa(
                      fontSize: (30),
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: height / 28,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: TextField(
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+(?:\.\d+)?$'))
                ],
                controller: mobilenumberController,
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: '0123456789'),
              ),
            ),
            Visibility(
              visible: isVisible,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: TextField(
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+(?:\.\d+)?$'))
                  ],
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  controller: mobileotpController,
                  //obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    //hintText: '•••••••••••',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (isVisible) {
                  verifyOtp(context);
                } else {
                  getOtp();
                }
              },
              child: Container(
                height: height / 11,
                width: width - 30,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      if (isVisible) {
                        verifyOtp(context);
                      } else {
                        getOtp();
                      }
                    },
                    child: Text(
                      isVisible ? 'Verify otp' : 'Send otp',
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  getOtp() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91${mobilenumberController.text}',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          verificationID = verificationId;
          isVisible = true;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  verifyOtp(context) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationID, smsCode: mobileotpController.text);

      await FirebaseAuth.instance.signInWithCredential(credential);

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const RooomScreeen()),
          (route) => false);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('SomeThing Went Wrong'),
        backgroundColor: Colors.red,
      ));
    }
  }
}
