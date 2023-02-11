// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class privacyPolicy extends StatefulWidget {
  const privacyPolicy({super.key});

  @override
  State<privacyPolicy> createState() => _privacyPolicyState();
}

class _privacyPolicyState extends State<privacyPolicy> {
  @override
  void initState() {
    super.initState();
  }

  Widget text(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: TextStyle(
            fontSize: min(17, MediaQuery.of(context).size.width / 23),
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
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
            'PRIVACY POLICY',
            style: TextStyle(
                fontSize: min(
                    15,
                    min(MediaQuery.of(context).size.width / 22,
                        MediaQuery.of(context).size.height / 10)),
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                  color: Color(0xfff8E8E93),
                  IconData(0xef4d,
                      fontFamily: 'MaterialIcons', matchTextDirection: true))),
        ),
        Expanded(
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 44,
              ),
              text(context,
                  "Our Privacy Policy was last updated on 15/03/2022."),
              text(context, " "),
              text(context,
                  "This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You."),
              text(context, " "),
              text(context,
                  "We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy was generated by TermsFeed Privacy Policy Generator. Interpretation and Definitions Interpretation"),
              text(context, " "),
              text(context,
                  "The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural. Definitions"),
              text(context, " "),
              text(context, "For the purposes of this Privacy Policy:"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ]),
    )));
  }
}
