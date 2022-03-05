import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/Widgets/return_page_header.dart';
import 'package:projet_transverse_equipe_7/view/patient/HomeScreenPage.dart';


class ConsultantHomePage extends StatefulWidget {
  @override
  _ConsultantHomePageState createState() => _ConsultantHomePageState();
}

class _ConsultantHomePageState extends State<ConsultantHomePage> {

  late String _drugA;
  late String _drugBeta;
  late String _drugDelta;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildDrugAField() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(right: 5),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
        ),
        style: TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty || RegExp(r'[a-zA-Z]+[_ -]$').hasMatch(value)) {
            return 'Entrez un nombre';
          }
        },
        onSaved: (String? value) {
          _drugA = value!;
        },
      ),
    );
  }
  Widget _buildDrugBetaField() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(right: 5),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
        ),
        style: TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty || RegExp(r'[a-zA-Z]+[_ -]$').hasMatch(value)) {
            return 'Entrez un nombre';
          }
        },
        onSaved: (String? value) {
          _drugBeta = value!;
        },
      ),
    );
  }
  Widget _buildDrugDeltaField() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(right: 5),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
        ),
        style: TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty || RegExp(r'[a-zA-Z]+[_ -]$').hasMatch(value)) {
            return 'Entrez un nombre';
          }
        },
        onSaved: (String? value) {
          _drugDelta = value!;
        },
      ),
    );
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
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              'Docteur\nMédecine générale\nATEA Cassandra\n\n' + '17 Avenue de Paris\nParis 8eme 75008',
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
                                '10505238274',
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
                          padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        'Medicament A\n' + '3 fois par jour AVR pendant 20 jours\n' +
                                            'MTE NR QCP AR',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: _buildDrugAField(),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        'Medicament Beta\n' +
                                        '3 fois par jour AVR pendant 20 jours\n' +
                                        'MTE AR\n',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: _buildDrugBetaField(),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        'Medicament A\n' + '3 fois par jour AVR pendant 20 jours\n' +
                                            'MTE NR QCP AR',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: _buildDrugDeltaField(),
                                    )
                                  ],
                                ),
                              ],
                            )
                          )
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
                  RaisedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        print(_drugA);
                        print(_drugBeta);
                        print(_drugDelta);
                      }
                    },
                    child: Text('Générer une nouvelle ordonnance')
                  ),
                  SizedBox(height: 10)
                ],
              ),
            )
          ]
      ),
    );
  }
}
