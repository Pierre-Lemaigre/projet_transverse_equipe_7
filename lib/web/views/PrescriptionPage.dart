import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/PrescriptionForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Utils/title.dart';

class PrescriptionPage extends StatefulWidget {
  static const String route = "/prescription";

  const PrescriptionPage({Key? key}) : super(key: key);

  @override
  _PrescriptionPageState createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TitleApp(),
            ),
            Expanded(
              child: PrescriptionForm(),
            )
          ],
        ),
      ),
    );
  }
}
