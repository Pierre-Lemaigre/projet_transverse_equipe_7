import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget SimpleFab() => AnimatedContainer(
  duration: Duration(milliseconds: 800),
  curve: Curves.linear,
  child:   FloatingActionButton(
      onPressed: () {},
      child: Icon(MdiIcons.qrcode, size: 30),
      backgroundColor: Colors.blue[800]
  ),
);