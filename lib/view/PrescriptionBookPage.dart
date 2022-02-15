import 'package:flutter/material.dart';


class PrescriptionBookPage extends StatefulWidget {
  @override
  _PrescriptionBookPage createState() => _PrescriptionBookPage();
}

class _PrescriptionBookPage extends State<PrescriptionBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () => Navigator.pop(context)
          )
        ],
      )
    );
  }
}