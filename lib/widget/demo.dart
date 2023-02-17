import 'package:flutter/material.dart';

import 'chats.dart';

class Demo extends StatelessWidget {
  Demo({super.key});

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
    return Container(
      child: Column(
        children: [
          Chats(
            profile: images[0],
            contactName: names[0],
            contactmessage: messages[0],
            messageTime: time[0],
          ),
          Chats(
            profile: images[1],
            contactName: names[1],
            contactmessage: messages[1],
            messageTime: time[1],
          ),
          Chats(
            profile: images[2],
            contactName: names[2],
            contactmessage: messages[2],
            messageTime: time[2],
          ),
          Chats(
            profile: images[3],
            contactName: names[3],
            contactmessage: messages[3],
            messageTime: time[3],
          ),
          Chats(
            profile: images[4],
            contactName: names[4],
            contactmessage: messages[4],
            messageTime: time[4],
          ),

          // repeat..

          //

          Chats(
            profile: images[0],
            contactName: names[0],
            contactmessage: messages[0],
            messageTime: time[0],
          ),
          Chats(
            profile: images[1],
            contactName: names[1],
            contactmessage: messages[1],
            messageTime: time[1],
          ),
          Chats(
            profile: images[2],
            contactName: names[2],
            contactmessage: messages[2],
            messageTime: time[2],
          ),
          Chats(
            profile: images[3],
            contactName: names[3],
            contactmessage: messages[3],
            messageTime: time[3],
          ),
          Chats(
            profile: images[4],
            contactName: names[4],
            contactmessage: messages[4],
            messageTime: time[4],
          ),
        ],
      ),
    );
  }
}
