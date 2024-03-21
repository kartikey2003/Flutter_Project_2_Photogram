// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:photo_gram/module/add_post/view/add_post.dart';
import 'package:photo_gram/module/chat/view/chat.dart';
import 'package:photo_gram/module/home/view/home.dart';
import 'package:photo_gram/module/profile/view/profile.dart';
import 'package:photo_gram/module/search/view/search.dart';

class RooomScreeen extends StatefulWidget {
  const RooomScreeen({super.key});

  @override
  State<RooomScreeen> createState() => _RooomScreeenState();
}

enum RoomIcons {
  home,
  search,
  addPost,
  chat,
  profile,
}

class _RooomScreeenState extends State<RooomScreeen> {
  RoomIcons currentIndex = RoomIcons.home;
  //int currentInde = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    // double width = MediaQuery.of(context).size.width; //424

    return Scaffold(
        body: EnumToBody[currentIndex], bottomNavigationBar: bottomNav(height));
  }

  Map EnumToBody = {
    RoomIcons.home: const Home(),
    RoomIcons.search: const Search(),
    RoomIcons.addPost: const AddPost(),
    RoomIcons.chat: const Chat(),
    RoomIcons.profile: const Profile(),
  };
  static const Map IndexToEnum = {
    0: RoomIcons.home,
    1: RoomIcons.search,
    2: RoomIcons.addPost,
    3: RoomIcons.chat,
    4: RoomIcons.profile
  };
  static const Map EnumToIcon = {
    RoomIcons.home: 'assets/home.png',
    RoomIcons.search: 'assets/search.png',
    RoomIcons.chat: 'assets/CHAT.png',
    RoomIcons.profile: 'assets/person.png',
  };

  Widget bottomNav(double height) {
    return BottomNavigationBar(
        onTap: (value) {
          currentIndex = IndexToEnum[value];
          setState(() {});
        },
        // currentIndex: currentInde,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          commanIcons(height, RoomIcons.home),
          commanIcons(height, RoomIcons.search),
          addpost(),
          commanIcons(height, RoomIcons.chat),
          commanIcons(height, RoomIcons.profile),
        ]);
  }

  BottomNavigationBarItem commanIcons(double height, RoomIcons roomIcons) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          EnumToIcon[roomIcons],
          color: currentIndex == roomIcons ? Colors.blue : null,
          height: height / 40,
          width: height / 40,
        ),
        label: '');
  }

  BottomNavigationBarItem addpost() {
    return BottomNavigationBarItem(
        icon: Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                Color(0xffFF00D6),
                Color(0xffFF4D00),
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.add))),
        label: 'ss');
  }
}
