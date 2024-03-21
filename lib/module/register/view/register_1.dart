import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gram/module/register/view/register_2.dart';

class RegisterPhla extends StatefulWidget {
  const RegisterPhla({super.key});

  @override
  State<RegisterPhla> createState() => _RegisterPhlaState();
}

class _RegisterPhlaState extends State<RegisterPhla> {
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
            padding: const EdgeInsets.only(top: 20.0, left: 16, bottom: 20),
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
                  border: OutlineInputBorder(), hintText: 'jane@example.com'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '•••••••••••',
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterStepSecond()),
                  (route) => false);
            },
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
                            builder: (context) => const RegisterStepSecond()),
                        (route) => false);
                  },
                  child: Text(
                    'NEXT',
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
    );
  }
}
