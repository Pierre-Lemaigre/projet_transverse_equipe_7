import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              print(selectedDay);
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
          Column(
            children: <Widget>[
              
            ]
          )
        ],
      ),
    );
  }
}
//TODO: add events ; link (https://www.youtube.com/watch?v=KvaKVud0Jx0&list=PL9fBgWeOOcXf-IjDS2oGolrMHBiVSUWRg&ab_channel=ElaiShane)