// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class messageSent extends StatefulWidget {
  const messageSent({super.key});

  @override
  State<messageSent> createState() => _messageSentState();
}

class _messageSentState extends State<messageSent> {
  @override
  void initState() {
    super.initState();
  }

  Widget button(BuildContext context) {
    return Container(
      width: 358,
      //height: 50,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xfff2C2C2E)),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(100)),
      child: Center(
          child: Text(
        "Back to home",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: min(
              16,
              min(
                MediaQuery.of(context).size.width / 20,
                MediaQuery.of(context).size.height / 30,
              )),
        ),
      )),
    );
  }

  Widget heading(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31),
      child: Text(
        text,
        style: TextStyle(
            fontSize: min(
                28,
                min(MediaQuery.of(context).size.width / 17,
                    MediaQuery.of(context).size.height / 30)),
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
    );
  }

  Widget plane(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 67),
      child: Image.asset("assets/images/messagesent.png"),
    );
  }

  Widget description(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17),
      child: Text(
        "You will recieve a responce fom us within 24 hours on your email address",
        style: TextStyle(
            fontSize: min(
                20,
                min(MediaQuery.of(context).size.width / 20,
                    MediaQuery.of(context).size.height / 30)),
            fontWeight: FontWeight.w400,
            color: Color(0xff8e8e93)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Color(0xff000000),
      child: Column(children: [
        Expanded(flex: 155, child: Container()),
        Expanded(flex: 166, child: plane(context)),
        Expanded(flex: 61, child: Container()),
        Expanded(
            flex: 34, child: heading(context, "Message sent successfully.")),
        Expanded(flex: 24, child: Container()),
        Expanded(flex: 61, child: description(context)),
        Expanded(flex: 180, child: Container()),
        Expanded(flex: 52, child: button(context)),
        Expanded(flex: 30, child: Container()),
      ]),
    )));
  }
}
