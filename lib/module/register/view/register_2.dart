import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gram/module/room/view/room_screeeen.dart';

class RegisterStepSecond extends StatefulWidget {
  const RegisterStepSecond({super.key});

  @override
  State<RegisterStepSecond> createState() => _RegisterStepSecondState();
}

class _RegisterStepSecondState extends State<RegisterStepSecond> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    double width = MediaQuery.of(context).size.width; //424
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 16, bottom: 32),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Register',
                style: GoogleFonts.comfortaa(
                    fontSize: (50),
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: height / 28,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'the_jane'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Container(
              height: height / 11,
              width: width - 30,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RooomScreeen()),
                        (route) => false);
                  },
                  child: Text(
                    'SING UP',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 36),
            child: SizedBox(
              height: 200,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'By signing up, you agree to Photo’s Terms of Service and '),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Privacy Policy.'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
