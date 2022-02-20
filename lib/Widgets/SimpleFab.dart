import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projet_transverse_equipe_7/view/patient/ScanQR.dart';

class SimpleFab extends StatelessWidget {
  const SimpleFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 800),
        curve: Curves.linear,
        child:   FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QrCodeScanner())
            );
          },
          child: Icon(MdiIcons.qrcode, size: 30),
          backgroundColor: Colors.blue[800]
        )
    );
  }
}
