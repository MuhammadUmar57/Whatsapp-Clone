// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chats extends StatelessWidget {
  String profile;
  String contactName;
  String contactmessage;
  String messageTime;

  Chats({
    super.key,
    required this.profile,
    required this.contactName,
    required this.contactmessage,
    required this.messageTime,
  });

  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    return Container(
      height: 110.0,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage(profile),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                child: Container(
                  width: 150.0,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ContactName

                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          contactName,
                          style: GoogleFonts.acme(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      // message..

                      Text(
                        contactmessage,
                        style: TextStyle(
                          color: Colors.white30,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //SizedBox(
              //width: devicewidth / 5,
              //),

              Spacer(),

              // Time..

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  messageTime,
                  style: GoogleFonts.acme(
                    color: Colors.white30,
                    fontSize: 15.0,
                  ),
                ),
              ),

              SizedBox(
                width: 10.0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80.0, top: 10.0),
            child: Divider(
              color: Colors.white24,
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
