import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/view/MyTreatmentPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
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
      intro_screens = (prefs.getBool(key) ?? false);
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
    return MyTreatementPage();
  }
}
