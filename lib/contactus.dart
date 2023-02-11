// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class contactus extends StatefulWidget {
  const contactus({super.key});

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  @override
  void initState() {
    super.initState();
  }

  Widget textArea(BuildContext context, String text, int maxline) {
    return Container(
      // width: 358,
      child: TextField(
        maxLines: maxline,
        style: const TextStyle(color: Colors.white, letterSpacing: 1),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF2C2C2E),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 18.25, vertical: 14),
          hintText: text,
          hintStyle: TextStyle(
            color: Color(0xff8e8e93),
            fontSize: min(
              17,
              MediaQuery.of(context).size.width / 23,
            ),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget button(BuildContext context) {
    return Container(
      width: 358,
      height: 50,
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: const GradientRotation(0.1713913),
              colors: [
                const Color(0xffC241FF).withOpacity(1),
                const Color(0xff25C3D8).withOpacity(1),
              ]),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        "Send the message",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: min(
              16,
              min(MediaQuery.of(context).size.width / 24,
                  MediaQuery.of(context).size.height / 40)),
        ),
      )),
    );
  }

  Widget subject(
      BuildContext context, String text, String hintlabel, int maxline) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: min(
                16,
                MediaQuery.of(context).size.width / 23,
              ),
              color: Colors.white),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        textArea(context, hintlabel, maxline)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      //constraints: BoxConstraints(maxWidth: 390),
      color: Color(0xff000000),
      child: Column(children: [
        AppBar(
          backgroundColor: Color(0xFF1c1c1e),
          centerTitle: true,
          title: Text(
            'CONTACT US',
            style: TextStyle(
                fontSize: min(
                    15,
                    min(MediaQuery.of(context).size.width / 22,
                        MediaQuery.of(context).size.height / 10)),
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          leading: Icon(
              color: Color(0xfff8E8E93),
              IconData(0xef4d,
                  fontFamily: 'MaterialIcons', matchTextDirection: true)),
        ),
        Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 51,
              ),
              subject(context, "Message Purpose", "Eg. Calling error", 1),
              SizedBox(
                height: 32,
              ),
              subject(context, "Message", "Type your message", 10),
              SizedBox(
                height: 48,
              ),
              button(context)
            ],
          ),
        )
      ]),
    )));
  }
}
