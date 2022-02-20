import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/views/SignInPage.dart';
import 'package:projet_transverse_equipe_7/web/views/signUp.dart';

class WebApp extends StatelessWidget {
  const WebApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OrdonnanceDash",
      routes: {
        '/': (context) => const SignUpPage(),
        '/login': (context) => const SignInPage(),
      },
    );
  }
}


