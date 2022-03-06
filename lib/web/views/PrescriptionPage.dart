import 'dart:convert';

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet_transverse_equipe_7/model/prescription.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/PrescriptionForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Utils/title.dart';
import 'package:projet_transverse_equipe_7/web/views/encrypt.dart';

class PrescriptionPage extends StatefulWidget {
  static const String route = "/prescription";

  const PrescriptionPage({Key? key}) : super(key: key);

  @override
  _PrescriptionPageState createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  AESEncryption encryption = new AESEncryption();

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

  //The function used to read the json file generated and to encrypt it
  Future<void> readJson(bool shouldEncrypt) async {
    final String response =
        await rootBundle.loadString('assets/Json/File.json');
    final data = await json.decode(response);
    setState(() {
      // Prescription = data["account"];
    });

    shouldEncrypt ? performEncryption(response) : null;
  }

  //Encryption function
  performEncryption(response) async {
    var encrypted = encryption.encryptMsg(response.toString()).base16;
    print(encrypted);
    var decrypted = encryption.decryptMsg(encryption.getCode(encrypted));
    print(decrypted);
    final data1 = await json.decode(decrypted);
    setState(() {
      //Prescription = data1["account"];
    });
  }
}
