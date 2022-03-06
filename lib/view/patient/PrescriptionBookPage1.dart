import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/Widgets/favorite_card.dart';
import 'package:projet_transverse_equipe_7/Widgets/favorite_carousel.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/medicament.dart';
import 'package:projet_transverse_equipe_7/model/patient.dart';
import 'package:projet_transverse_equipe_7/model/prescription-vf.dart';
import 'package:projet_transverse_equipe_7/model/prescription.dart';
import 'package:projet_transverse_equipe_7/view/patient/HomeScreenPage.dart';
import 'package:projet_transverse_equipe_7/Widgets/return_page_header.dart';
import 'package:projet_transverse_equipe_7/Widgets/favorite.dart';


class PrescriptionBookPage1 extends StatefulWidget {
  @override
  _PrescriptionBookPage createState() => _PrescriptionBookPage();
}
  List<Fiche> TestPrescriptions=[
    Fiche(Patient(nom: "Smith", prenom: "Jonh", numSS: "1978686897"), Medicament(cis: 159, denomination: "Parace", detail: "1", priseParJour: 1, nombre: 2, dureeTraitement: Duration(days: 23))),
    Fiche(Patient(nom: "Smith", prenom: "Jonh", numSS: "6768798"), Medicament(cis: 159, denomination: "Doly", detail: "2", priseParJour: 1, nombre: 2, dureeTraitement: Duration(days: 30))),
    Fiche(Patient(nom: "Smith", prenom: "Jonh", numSS: "208997865"), Medicament(cis: 159, denomination: "Viagra", detail: "3", priseParJour: 1, nombre: 2, dureeTraitement: Duration(days: 15))),

  ];
List<Fiche> TestPrescription=[
  Fiche(Patient(nom: "Smith", prenom: "Jonh", numSS: "2867789778"), Medicament(cis: 159, denomination: "Parazite", detail: "Grave", priseParJour: 1, nombre: 2, dureeTraitement: Duration(days: 23))),

];


class _PrescriptionBookPage extends State<PrescriptionBookPage1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    Prescription prescription = new Prescription(
        1,
        'Consultation Allergologie',
        'Dr Jean Philippe',
        '15/09/2021',
        '15/12/2021'
    );
    return Scaffold(
      backgroundColor: Colors.white,
         // ListView.builder
        body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          Container(
            child: ReturnPageHeader(title: 'Mes ordonnances', widget: HomeScreenPage())
          ),
          SizedBox(height: 20),
          FavoriteCarousel(),
          SizedBox(height: 30),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Actives'),
                Tab(text: 'Archivées')
              ]
            )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: double.maxFinite,
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: TestPrescriptions.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Favorite(
                      fiche: TestPrescriptions[index],
                      cardColor: Colors.grey[200],
                      icon: Icons.favorite_border,
                      secondIcon: Icons.archive,
                      secondIconColor: Colors.green[300],
                    );
                  }
                ),
                ListView.builder(
                    itemCount: TestPrescription.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Favorite(
                        fiche: TestPrescription[index],
                        cardColor: Colors.grey[200],
                        icon: Icons.error,
                        secondIcon: Icons.unarchive,
                        secondIconColor: Colors.red[300],
                      );
                    }
                ),
              ],
            )
          )
        ],
      )
    );
  }
}