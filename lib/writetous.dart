// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class writeToUs extends StatefulWidget {
  const writeToUs({super.key});

  @override
  State<writeToUs> createState() => _writeToUsState();
}

class _writeToUsState extends State<writeToUs> {
  @override
  void initState() {
    super.initState();
  }

  Widget textArea(BuildContext context, String text, int maxline) {
    return Container(
      width: 358,
      child: TextField(
        maxLines: min(
            maxline,
            min((MediaQuery.of(context).size.width / 50).floor(),
                (MediaQuery.of(context).size.height / 100).floor())),
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
                min(
                  MediaQuery.of(context).size.width / 23,
                  MediaQuery.of(context).size.height / 23,
                )),
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
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
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
              min(
                MediaQuery.of(context).size.width / 20,
                MediaQuery.of(context).size.height / 20,
              )),
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
                  min(MediaQuery.of(context).size.width / 23,
                      MediaQuery.of(context).size.height / 23)),
              color: Colors.white),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        textArea(context, hintlabel, maxline)
      ]),
    );
  }

  Widget heading(BuildContext context, String text) {
    return Container(
      width: 358,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: min(
                22,
                min(MediaQuery.of(context).size.width / 18,
                    MediaQuery.of(context).size.height / 30)),
            color: Color(0xff636366),
            letterSpacing: .35),
      ),
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
            'WRITE TO US',
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
          child: Column(
            children: [
              Expanded(flex: 38, child: Container()),
              Expanded(
                flex: 56,
                child: heading(context,
                    "Have any idea or suggestion in mind? We will love to know that."),
              ),
              //   Expanded(flex: 34, child: Container()),
              Expanded(
                  flex: 207,
                  child: subject(context, "Message", "Type your message", 10)),
              Expanded(child: Container()),
              // Expanded(
              //   flex: 38,
              //   child: button(context),
              // ),
              button(context),
              Expanded(flex: 30, child: Container())
            ],
          ),
        )
      ]),
    )));
  }
}
