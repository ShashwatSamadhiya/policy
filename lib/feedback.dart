// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  @override
  void initState() {
    super.initState();
  }

  Widget tiles(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(left: 19, right: 26),
      child: Row(children: [
        Text(
          text,
          style: TextStyle(
              fontSize: min(20, MediaQuery.of(context).size.width / 19),
              fontWeight: FontWeight.w500,
              // letterSpacing: .38,
              color: Colors.white),
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              IconData(0xef4e,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              color: Color(0xfffAEAEB2),
            ))
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
            'APP FEEDBACK',
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 51,
              ),
              tiles(
                context,
                "Suggestions? Write to us.",
              ),
              SizedBox(
                height: 48,
              ),
              tiles(
                context,
                "Rate the app",
              ),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        )
      ]),
    )));
  }
}
