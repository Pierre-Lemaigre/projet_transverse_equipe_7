import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/Widgets/return_page_header.dart';
import 'package:projet_transverse_equipe_7/view/patient/HomeScreenPage.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:math' as math;

class PrescriptionMainPage extends StatefulWidget {
  @override
  _PrescriptionMainPageState createState() => _PrescriptionMainPageState();
}

class _PrescriptionMainPageState extends State<PrescriptionMainPage> {
  late bool _displayPatientInfos;
  late int _idPrescription;
  late String _prescriptionContent = "";
  late String _prescription = "";

  @override
  void initState() {
    this._displayPatientInfos = false;
    this._idPrescription = 0;
    Future<String> s = ReadPrescription(this._idPrescription.toString());
    _prescription = jsonDecode(_prescriptionContent);
    print("presc: " + _prescription);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          children: <Widget>[
            ReturnPageHeader(title: 'Mon Ordonnance', widget: HomeScreenPage()),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ordonnance 1',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Etat',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.adjust_rounded,
                          color: Colors.green,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            this._displayPatientInfos ?
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 15),
                        child: Text(
                          'Information praticien',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffeeeeee),
                          ),
                          margin: EdgeInsets.only(bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Docteur\nMédecine générale\nATEA Cassandra\n\n' +
                                '17 Avenue de Paris\nParis 8eme 75008',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 15),
                        child: Text(
                          'Information patient',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffeeeeee),
                          ),
                          margin: EdgeInsets.only(bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Monsieur LEMAIGRE Pierre\n' +
                                '16 ans 73 kg\n' +
                                'né le 16/05/2005 à New Delhi\n' +
                                '_prescription[0]',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 15),
                        child: Text(
                          'Information ordonnance',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Générée le:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                '16/09/2021',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Valide jusqu'au:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                '16/09/2021',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 15),
                        child: Text(
                          'Médicaments',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffeeeeee),
                          ),
                          margin: EdgeInsets.only(bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Medicament A\n' +
                                '3 fois par jour AVR pendant 20 jours\n' +
                                'MTE NR QCP AR\n' +
                                'Medicament Beta\n' +
                                '3 fois par jour AVR pendant 20 jours\n' +
                                'MTE AR\n' +
                                'Medicament Delta\n' +
                                '2 fois par jour AVR pendant 3jours\n' +
                                'NR AR\n',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffeeeeee),
                          ),
                          margin: EdgeInsets.only(bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Mangez 5 fruits et legumes par jour ^^',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width * 0.5,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffeeeeee),
                              ),
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Signature",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xffeeeeee),
                                ),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ) :
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Image.asset('assets/images/home_page/qr_code.png'),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Pierre LEMAIGRE\nNé le 16/05/2005\nNumero Securite sociale',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: 270 * math.pi / 180,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black87,
                          size: 25,
                        ),
                        onPressed: (){
                          setState(() {
                            this._displayPatientInfos = true;
                          });
                        }
                      //infos.build(context);},
                    ),
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
    Future<String> ReadPrescription(String id_prescription) async {
      String text = "";
      try {
        final Directory directory = await getApplicationDocumentsDirectory();
        final File file = File('${directory.path}/${id_prescription}.json');
        text = await file.readAsString();
      } catch (e) {
        print("Couldn't read file");
      }
      this._prescriptionContent = text;
      //print("fonction: text:" + text);
      //print("fonction: file_content:" + file_content);
      return text;


}
}