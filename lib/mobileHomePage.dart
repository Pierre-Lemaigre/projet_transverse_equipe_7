import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projet_transverse_equipe_7/view/IntroductionAppScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return !intro_screens ? IntroductionAppScreen() : Scaffold(
      body: Center(child: Text("Hello"),),
    );
  }
}
