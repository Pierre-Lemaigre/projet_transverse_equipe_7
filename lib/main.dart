import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/view/patient/HomeScreenPage.dart';
import 'package:projet_transverse_equipe_7/view/patient/IntroductionAppScreen.dart';
import 'package:projet_transverse_equipe_7/web/routes/webApp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projet_transverse_equipe_7/model/data_manager.dart';

void main() {
  runApp(MyApp());

  //Tests gd
  DataManager dm = new DataManager();
  String content = '{"patient":"{"numSS":"1 98 078 03322","nom":"Roux","prenom":"Louis"}","medicaments":"[{"cis":0,"nom":"Mazeae","denomination":"MTE ERERA","detail":"Prise repas","renouvellement":1,"duree":1,"prise_jour":2,"moment_prise":"["Matin","Midi"]"}]","hash":145536398}';

  dm.WritePrescription(content, "0");

  //dm.GetPrescriptionContent("0");

  print("content");

  Future<String> s = dm.ReadPrescription("0");
/*
  dm.ReadPrescription("0").then((String result){
    dm.file_content = result;
  });*/

  print("file_content: " + dm.file_content);

}

class MyApp extends StatelessWidget {
  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool intro_screens = false;
  String key = 'intro_screen_viewed';

  void _loadIntroScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      intro_screens = prefs.getBool(key) ?? false;
    });
    if (!intro_screens) {
      await prefs.setBool(key, true);
    }
  }

  @override
  void initState() {
    super.initState();
    _loadIntroScreen();
  }

  @override
  Widget build(BuildContext context){
    return kIsWeb? WebApp() : !intro_screens ? IntroductionAppScreen() : HomeScreenPage();
  }
}