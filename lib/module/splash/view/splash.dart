import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gram/module/login/view/login_via_mobile_otp.dart';
import 'package:photo_gram/module/register/view/register_1.dart';
import 'package:photo_gram/module/room/view/room_screeeen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      if (FirebaseAuth.instance.currentUser != null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const RooomScreeen()),
            (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginViaMobileOtp()),
            (route) => false);
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    double width = MediaQuery.of(context).size.width; //424

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: height / 8,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginViaMobileOtp()));
                },
                child: Container(
                  height: height / 15,
                  width: width / 2.25,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginViaMobileOtp()));
                        },
                        child: Text(
                          'LOG IN',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterPhla()),
                    (route) => false);
              },
              child: Container(
                height: height / 15,
                width: width / 2.25,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPhla()),
                            (route) => false);
                      },
                      child: Text(
                        'REGISTER',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.fill)),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: height / 20,
                    width: height / 20,
                    child: Stack(
                      children: [
                        Image.asset('assets/Union (1).png'),
                        Image.asset('assets/Union.png')
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Photo',
                    style: GoogleFonts.comfortaa(
                        fontSize: height / 18, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  bottom: 20,
                  left: 16,
                  child: SizedBox(
                    height: height / 20,
                    width: (135 / 375) * width,
                    //  color: Colors.black,
                    child: Row(
                      children: [
                        Container(
                          height: (28 / 812) * height,
                          width: (28 / 812) * height,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Ellipse.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Pawel Czerwinski',
                              style: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                //color: Colors.white
                              ),
                            ),
                            Text(
                              '@pawel_czerwinski',
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                //color: Colors.white
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
