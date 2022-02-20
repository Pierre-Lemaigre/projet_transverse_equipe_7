import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/routes/webApp.dart';
import 'mobileHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return WebApp();
    } else {
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
}
