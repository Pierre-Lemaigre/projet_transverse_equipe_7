import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/Widgets/TreatmentCard.dart';
import 'package:projet_transverse_equipe_7/Widgets/return_page_header.dart';
import 'package:table_calendar/table_calendar.dart';

import 'HomeScreenPage.dart';

class MyTreatementPage extends StatefulWidget {
  @override
  _MyTreatementPageState createState() => _MyTreatementPageState();
}

class _MyTreatementPageState extends State<MyTreatementPage> {
  CalendarFormat _format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  List<String> str_weeks = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche'];
  List<String> str_months = [
    'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août',
    'Septembre', 'Octobre', 'Novembre', 'Decembre'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          Container(
              child: ReturnPageHeader(title: 'Mon Traitement', widget: HomeScreenPage())
          ),
          TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime(2022),
            lastDay: DateTime(2070),
            calendarFormat: _format,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            onFormatChanged: (CalendarFormat fmt) {
              setState(() {
                _format = fmt;
              });
            },
            onDaySelected: (DateTime _selectedDay, DateTime _focusedDay) {
              setState(() {
                selectedDay = _selectedDay;
                focusedDay = _focusedDay;
              });
            },
            selectedDayPredicate: (DateTime day) {
              return isSameDay(selectedDay, day);
            },
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                color: Colors.purpleAccent,
                shape: BoxShape.circle,
              )
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: TextStyle(fontSize: 20)
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${str_weeks[selectedDay.weekday-1]} ${selectedDay.day} ${str_months[selectedDay.month-1]}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)
                ),
                SizedBox(height: 15),
                Text('Matin', style: TextStyle(fontSize: 18)),
                TreatmentCard(
                  cardColor: Colors.green[100],
                  imagePath: 'assets/images/treatment/pills1.png',
                  medecine_name: "Cetirizine",
                  pills: 2,
                  trmt_desc: 'comprimés par jour',
                ),
                SizedBox(height: 10),
                Text('Midi', style: TextStyle(fontSize: 18)),
                TreatmentCard(
                  cardColor: Colors.blue[100],
                  imagePath: 'assets/images/treatment/pill2.png',
                  medecine_name: "Subutex",
                  pills: 1,
                  trmt_desc: 'comprimé par jour',
                ),
                SizedBox(height: 15),
                Text('Soir', style: TextStyle(fontSize: 18)),
                TreatmentCard(
                  cardColor: Colors.purple[100],
                  imagePath: 'assets/images/treatment/injection.png',
                  medecine_name: "Insuline",
                  pills: 1,
                  trmt_desc: 'injection le soir',
                ),
                TreatmentCard(
                  cardColor: Colors.purple[100],
                  imagePath: 'assets/images/treatment/dropper.png',
                  medecine_name: "Colyre",
                  pills: 2,
                  trmt_desc: 'gouttes par oeil',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//TODO: add events ; link (https://www.youtube.com/watch?v=KvaKVud0Jx0&list=PL9fBgWeOOcXf-IjDS2oGolrMHBiVSUWRg&ab_channel=ElaiShane)