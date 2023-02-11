// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:policy/2partylegaldisclosure.dart';
import 'package:policy/phonerecordinglaws.dart';
import 'package:policy/privacyPolicy.dart';
import 'package:policy/term&condition.dart';

class policy extends StatefulWidget {
  const policy({super.key});

  @override
  State<policy> createState() => _policyState();
}

class _policyState extends State<policy> {
  @override
  void initState() {
    super.initState();
  }

  Widget tiles(BuildContext context, String text, Widget Function() screen) {
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
            onPressed: () {
              //  Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return screen();
              }));
            },
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
      color: Color(0xfff000000),
      child: Column(children: [
        AppBar(
          backgroundColor: Color(0xFFF1c1c1e),
          centerTitle: true,
          title: Text(
            'DATA & PRIVACY',
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
              tiles(context, "Privacy Policy", () => privacyPolicy()),
              SizedBox(
                height: 48,
              ),
              tiles(context, "Terms & Conditions", () => termsandcondition()),
              SizedBox(
                height: 48,
              ),
              tiles(
                  context, "Phone Recording Laws", () => phonerecordinglaws()),
              SizedBox(
                height: 48,
              ),
              tiles(context, "3rd Party Disclosure",
                  () => partylegaldisclosure()),
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
