import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projet_transverse_equipe_7/view/patient/ScanQR.dart';

class ExtendedFab extends StatelessWidget {
  const ExtendedFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 800),
        curve: Curves.linear,
        child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QrCodeScanner())
              );
            },
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
  }
}
