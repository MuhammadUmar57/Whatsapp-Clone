// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/widget/demo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/umar.JPG",
    "assets/images/baba.png",
    "assets/images/waleed.png",
    "assets/images/zubair.png",
    "assets/images/usman.jpeg",
  ];

  List<String> names = [
    "Umar Khan",
    "Baba Jan",
    "Waleed Hussain",
    "Zubair Hussain",
    "Usman Khan",
  ];

  List<String> messages = [
    "See you there!",
    "How are you?",
    "What's Up??",
    "Going for Dinner",
    "On my way",
  ];

  List<String> time = [
    "09:25",
    "10:15",
    "01:00",
    "08:45",
    "06:30",
  ];

  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8.0),
          child: Text(
            "Edit",
            style: GoogleFonts.acme(
              fontSize: 15.0,
              color: Colors.blue,
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.blue,
              size: 25.0,
            ),
          ),
          SizedBox(width: 15.0),
          Icon(
            Icons.note_alt_outlined,
            color: Colors.blue,
            size: 25.0,
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Chats",
                style: GoogleFonts.acme(
                  fontSize: 35.0,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "BroadCast Lists",
                    style: GoogleFonts.acme(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "New Group",
                    style: GoogleFonts.acme(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.white24,
            ),

            // Displaying Chats
            Demo(),
          ],
        ),
      ),
    );
  }
}
