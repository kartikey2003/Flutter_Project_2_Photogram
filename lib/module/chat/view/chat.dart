// ignore_for_file: unnecessary_cast

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gram/module/chat/view/chat_messages.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Map<String, String>> chatList = [
    {
      "Name": "Emma",
      "Message": "My dog is my happiness",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "James",
      "Message": "Walking my dog is the best part of my day",
      "url":
          "https://images.unsplash.com/photo-1627012481660-64a3f3d8ebad?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBob3RvJTIwcGVyc29ufGVufDB8fDB8fHww"
    },
    {
      "Name": "Ava",
      "Message": "My dog understands me like no one else",
      "url":
          "https://images.unsplash.com/photo-1627012481660-64a3f3d8ebad?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBob3RvJTIwcGVyc29ufGVufDB8fDB8fHww"
    },
    {
      "Name": "William",
      "Message": "I feel complete with my dog by my side",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Sophia",
      "Message": "My dog is my confidant",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Benjamin",
      "Message": "Dogs teach us to live in the moment",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Emma",
      "Message":
          "My dog brings joy to my life. Every moment with them is precious.",
      "url":
          "https://images.unsplash.com/photo-1627012481660-64a3f3d8ebad?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBob3RvJTIwcGVyc29ufGVufDB8fDB8fHww"
    },
    {
      "Name": "James",
      "Message":
          "Walking with my dog is an adventure. They make my day brighter.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Ava",
      "Message":
          "My dog is my faithful companion. Their loyalty knows no bounds.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "William",
      "Message":
          "With my dog by my side, I feel complete. They're my best friend.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Sophia",
      "Message": "My dog is my confidant. They understand me like no one else.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Benjamin",
      "Message":
          "Dogs teach us to live in the moment. They're our greatest teachers.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Olivia",
      "Message":
          "Cuddling with my dog is my favorite activity. They fill my heart with warmth.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Alexander",
      "Message":
          "My dog's antics always make me laugh. They're a constant source of joy.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Charlotte",
      "Message":
          "My dog is my source of comfort. They're always there when I need them.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Michael",
      "Message":
          "Playing fetch with my dog is therapeutic. It's a bond that heals.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "Name": "Emily",
      "Message": "I admire my dog's loyalty. They're truly a friend for life.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //926
    // double width = MediaQuery.of(context).size.width; //424
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 246, 246),
          title: Text(
            'Chats',
            style: GoogleFonts.comfortaa(
                fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChatMessage(
                      userData: chatList[index] as Map<String, String>);
                }));
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: height / 30,
                        backgroundImage: NetworkImage(chatList[index]["url"]!),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          chatList[index]['Name']!,
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            chatList[index]['Message']!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
