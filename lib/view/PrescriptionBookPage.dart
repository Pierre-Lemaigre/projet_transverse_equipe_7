import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/Widgets/favorite_card.dart';
import 'package:projet_transverse_equipe_7/Widgets/favorite_carousel.dart';
import 'package:projet_transverse_equipe_7/model/prescription.dart';
import 'package:projet_transverse_equipe_7/view/HomeScreenPage.dart';
import 'package:projet_transverse_equipe_7/Widgets/return_page_header.dart';


class PrescriptionBookPage extends StatefulWidget {
  @override
  _PrescriptionBookPage createState() => _PrescriptionBookPage();
}

class _PrescriptionBookPage extends State<PrescriptionBookPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    Prescription prescription = new Prescription(
        'Consultation Allergologie',
        'Dr Jean Philippe',
        '15/09/2021',
        '15/12/2021'
    );
    return Scaffold(
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
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return FavoriteCard(
                      prescription: prescription,
                      cardColor: Colors.grey[200],
                      icon: Icons.favorite_border,
                      secondIcon: Icons.archive,
                      secondIconColor: Colors.green[300],
                    );
                  }
                ),
                ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return FavoriteCard(
                        prescription: prescription,
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