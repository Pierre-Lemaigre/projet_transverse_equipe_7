import 'dart:core';

import 'package:flutter/material.dart';

class WebDuoFormField extends StatefulWidget {
  final TextEditingController textController1;
  final String hint1;
  final String textField1;
  final TextEditingController textController2;
  final String hint2;
  final String textField2;

  const WebDuoFormField(
      {required this.textController1,
        required this.hint1,
        required this.textField1,
        required this.textController2,
        required this.hint2,
        required this.textField2});

  @override
  _WebDuoFormFieldState createState() =>
      _WebDuoFormFieldState(tc1: textController1,
          tc2: textController2,
          tf1: textField1,
          tf2: textField2,
          h1: hint1,
          h2: hint2);
}

class _WebDuoFormFieldState extends State<WebDuoFormField> {
  TextEditingController tc1;
  TextEditingController tc2;
  String h1;
  String h2;
  String tf1;
  String tf2;

  _WebDuoFormFieldState(
      {required this.tc1, required this.tc2, required this.h1, required this.h2, required this.tf1, required this.tf2});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width / 3.3;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
          child: SizedBox(
            width: width / 2.5,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  tf1,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                controller: tc1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: h1,
                ),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
          child: SizedBox(
            width: width / 2.5,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  tf2,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                controller: tc2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: h2,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
