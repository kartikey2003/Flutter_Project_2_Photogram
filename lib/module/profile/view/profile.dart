// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gram/module/profile/view/UpdateProfile.dart';
import 'package:photo_gram/module/splash/view/splash.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> staggeredImages = [
    'https://images.unsplash.com/photo-1541675154750-0444c7d51e8e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1603064752734-4c48eff53d05?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1544653221-81df644ed75f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1519638831568-d9897f54ed69?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1614288532696-203f89dc0db4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1621477745813-31bc173c691d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1557401622-cfc0aa5d146c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1463428537233-c84b754b2c84?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1523626797181-8c5ae80d40c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1675720869138-0bc85ab78f0c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1506443432602-ac2fcd6f54e0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1674530449865-71d68cad7303?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1518352724948-729151797553?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1503198515498-d0bd9ed16902?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1546182208-1e70985e2bf3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjN8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1611262588024-d12430b98920?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1617074064882-3ca2e8f96bbd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fHBuZ3xlbnwwfHwwfHx8MA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    double width = MediaQuery.of(context).size.width; //424

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: SafeArea(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/profilePhoto.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.center,
              child: Text('Jane ',
                  style: GoogleFonts.comfortaa(
                      fontSize: 36, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('San francisco, ca '.toUpperCase(),
                    style: GoogleFonts.roboto(
                        fontSize: 13, fontWeight: FontWeight.bold)),
              ),
            ),
            followButton(height, width),
            MassegeButton(height, width),
            stageredProfile(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: height / 15,
                width: width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Splashscreen()),
                            (route) => false);
                      },
                      child: Text(
                        'LOG OUT '.toUpperCase(),
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget followButton(double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: height / 15,
        width: width / 1.1,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: TextButton(
              onPressed: () {},
              child: Text(
                'follow jane'.toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }

  Widget MassegeButton(double height, double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: height / 15,
        width: width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateProfile()));
              },
              child: Text(
                'UpDate Profile'.toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              )),
        ),
      ),
    );
  }

  Widget stageredProfile() {
    return SingleChildScrollView(
      child: MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        itemCount: (staggeredImages.length),
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return Image.network(
              staggeredImages[index % (staggeredImages.length - 1)]);
        },
      ),
    );
  }
}
