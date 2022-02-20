import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/view/consultant/signUp.dart';

class WebApp extends StatelessWidget {
  const WebApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OrdonnanceDash",
      routes: {
        '/': (context) => const SignUpPage(),
      },
    );
  }
}


