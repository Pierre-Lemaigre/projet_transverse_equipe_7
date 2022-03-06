import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/views/PrescriptionPage.dart';
import 'package:projet_transverse_equipe_7/web/views/SignInPage.dart';
import 'package:projet_transverse_equipe_7/web/views/signUpPage.dart';

class WebApp extends StatelessWidget {
  const WebApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OrdonnanceDash",
      initialRoute: SignInPage.route,
      routes: {
        SignUpPage.route : (context) => const SignUpPage(),
        SignInPage.route : (context) => const SignInPage(),
        PrescriptionPage.route : (context) => const PrescriptionPage(),
      },
    );
  }
}


