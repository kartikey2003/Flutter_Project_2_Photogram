// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ChatMessage extends StatefulWidget {
  final Map<String, String> userData;
  const ChatMessage({super.key, required this.userData});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  List<Map<String, dynamic>> chatMessages = [
    {
      "IsMe": false,
      "Message": "The mountains are calling and I must go to dubai",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "A cup of tea makes everything better",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Life is short, smile while you still have teeth",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "In pizza we trust",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Adventure awaits!",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "Life is better with a dog",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Stay wild, moon child",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "Coffee is my love language",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Every moment matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "Happiness is homemade",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Every moment matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Every moment matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Every moment matters not ",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "Every moment matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Everybody dance.",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": " moment matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": true,
      "Message": "Everybody matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
    {
      "IsMe": false,
      "Message": "Every moment matters",
      "url":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG8lMjBwZXJzb258ZW58MHx8MHx8fDA%3D"
    },
  ];

  // final CollectionReference chats =
  //     FirebaseFirestore.instance.collection('chats');
  // Future getUserMessages() {
  //   Completer<Map> completer = Completer();
  //   chats
  //       .doc(FirebaseFirestore.instance.currentuser?.uid)
  //       .get()
  //       .then((value) {});
  //   return completer.future;
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: appbar(),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: chat(width, height),
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (v) {
                setState(() {});
              },
              //controller: textEditingController,
              obscureText: false,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.send),
                  suffixIconColor: Colors.green.shade900,
                  border: const OutlineInputBorder(),
                  hintText: 'Send Messages',
                  hintStyle: TextStyle(color: Colors.green.shade500)),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget appbar() {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 50),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(widget.userData["url"]!)),
            ),
            Expanded(
                child: Title(
                    color: Colors.black,
                    child: Text(
                      widget.userData["Name"]!,
                      style: GoogleFonts.roboto(fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }

  Widget chat(double width, double height) {
    return ListView.builder(
        itemCount: chatMessages.length,
        itemBuilder: (context, Index) {
          switch (chatMessages[Index]['IsMe']) {
            case true:
              return chatFromMe(width, height, Index);

            default:
              return chatFromOtherUser(width, height, Index);
          }
        });
  }

  Widget chatFromOtherUser(double width, double height, Index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Expanded(child: Container()),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(widget.userData["url"]!),
          ),
          const SizedBox(
            width: 16,
          ),
          Flexible(
            flex: 4,
            child: Container(
              height: height / 12,
              width: width / 1.5,
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(chatMessages[Index]['Message']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: Text(
                      DateFormat().format(DateTime.now()
                          .subtract(Duration(minutes: (30 * Index).toInt()))),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 8, 136, 12)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(flex: 1, child: Container()),
        ],
      ),
    );
  }

  Widget chatFromMe(double width, double height, Index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: Container()),
          Flexible(
            flex: 4,
            child: Container(
              height: height / 12,
              width: width / 1.5,
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Text(chatMessages[Index]['Message']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(
                      DateFormat().format(DateTime.now()
                          .subtract(Duration(minutes: (30 * Index).toInt()))),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 8, 136, 12)),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(widget.userData["url"]!),
          ),
        ],
      ),
    );
  }
}

/*
cd android
./gradlew SigningReport
flutter pub add firebase_core
*/