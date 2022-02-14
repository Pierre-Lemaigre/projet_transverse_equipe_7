import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget ExtendedFab() => AnimatedContainer(
  duration: Duration(milliseconds: 800),
  curve: Curves.linear,
  child: FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(MdiIcons.qrcode),
      label: Center(
          child: Text(
            "Ajouter une ordonnance",
            style: TextStyle(fontSize: 13),
          )
      ),
      backgroundColor: Colors.blue[800]
  )
);