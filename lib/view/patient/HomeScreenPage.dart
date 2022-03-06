import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projet_transverse_equipe_7/Widgets/ExtendedFab.dart';
import 'package:projet_transverse_equipe_7/Widgets/SimpleFab.dart';
import 'package:projet_transverse_equipe_7/view/patient/MyTreatmentPage.dart';
import 'package:projet_transverse_equipe_7/view/patient/PrescriptionBookPage.dart';
import 'package:projet_transverse_equipe_7/view/patient/PrescriptionMainPage.dart';
import 'package:projet_transverse_equipe_7/view/patient/current_location.dart';
import 'package:projet_transverse_equipe_7/view/patient/current_location.dart';


class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPage createState() => _HomeScreenPage();
}

class _HomeScreenPage extends State<HomeScreenPage> {
  ScrollController _scrollController = new ScrollController();
  bool isFab = false;
  
  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset > 50) {
        setState(() {
          isFab = true;
        });
      }
      else{
        setState(() {
          isFab = false;
        });
      }
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: isFab? SimpleFab() : ExtendedFab(),
        body: SafeArea(
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 30),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'OrdonnanceDash',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                    child: const Image(
                      image: const AssetImage("assets/animations/pharmacy_f.gif"),
                    )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Prescriptions',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                        padding: EdgeInsets.all(15),
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(20)
                        ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PrescriptionMainPage())
                            );
                          },
                          splashColor: Colors.greenAccent.withOpacity(0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/home_page/qr_code.png',
                                width: 100,
                                height: 100,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Ordonnance favorite',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                        'Dr Jean Phillipe',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        )
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                        'Scannée le 15/09/2021',
                                        style: TextStyle(
                                            fontSize: 15
                                        )
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        'Valide jusqu\'au:',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        )
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                        '15/12/2021 inclus',
                                        style: TextStyle(
                                            fontSize: 15
                                        )
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                      padding: EdgeInsets.all(15),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PrescriptionBookPage())
                            );
                          },
                          child: Row(
                              children: <Widget>[
                                Container(
                                  width: 200,
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                              'Mes ordonnaces',
                                              style: TextStyle(
                                                fontSize: 21,
                                                fontWeight: FontWeight.bold,
                                              )
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                              'Ouvrir mon carnet',
                                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                                          ),
                                          SizedBox(height: 10),
                                          SizedBox(
                                            width: 350,
                                            child: Text(
                                                'Vos ordonnaces dans les formats QR code et PDF à presenter en pharmacie.',
                                                style: TextStyle(fontSize: 15)
                                            ),
                                          ),
                                        ]
                                    ),
                                ),
                                Image.asset(
                                    'assets/images/home_page/prescr_book.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Mon traitement',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      padding: EdgeInsets.all(15),
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyTreatementPage())
                              );
                            },
                            splashColor: Colors.blue.withOpacity(0.3),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                      child: Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  'Suivre mon traitement',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                  'Tous les médicaments à prendre aujourd\'hui et prochainement',
                                                  style: TextStyle(fontSize: 16)
                                              )
                                            ]
                                        ),
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      'assets/images/home_page/calendar.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ]
                            )
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      padding: EdgeInsets.all(15),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>CurrentLocationScreen())
                            );
                          },
                          child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Image.asset(
                                      'assets/images/home_page/map.png',
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Container(
                                  child: Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(top: 25.0),
                                            child: Text(
                                                'Trouver une pharmacie',
                                                style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.bold,
                                                )
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                              'Trouvez la pharmacie la plus rapide et proche de chez vous',
                                              style: TextStyle(fontSize: 15)
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
        )
    );
  }
}
