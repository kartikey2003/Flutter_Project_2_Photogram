// ignore: file_names
import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_gram/module/profile/view/profile.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      getphotoFromGallary();
                    },
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue.shade50,
                          radius: 80,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_a_photo_outlined),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //controller: textEditingController,
                  obscureText: false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Our Nmae',
                      hintStyle: TextStyle(color: Colors.green.shade500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //controller: textEditingController,
                  obscureText: false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Our Address',
                      hintStyle: TextStyle(color: Colors.green.shade500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //controller: textEditingController,
                  // obscureText: false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Our DOB',
                      hintStyle: TextStyle(color: Colors.green.shade500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //controller: textEditingController,
                  obscureText: false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Our Mobile Number ',
                      hintStyle: TextStyle(color: Colors.green.shade500)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  child: Container(
                    height: height / 15,
                    width: width / 1.1,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Profile()));
                          },
                          child: Text(
                            'UpDate Profile'.toUpperCase(),
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  File? profileImage;
  ImagePicker imagePicker = ImagePicker();
  Future<File?> getphotoFromGallary() async {
    XFile? xfile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (xfile != null) {
      setState(() {
        profileImage = File(xfile.path);
      });
      return profileImage;
    } else {
      return null;
    }
  }
}
