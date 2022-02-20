import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/Widgets/consultant/Forms/SignUpForm.dart';
import 'package:projet_transverse_equipe_7/Widgets/consultant/Utils/title.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TitleApp(),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: SignUpForm(),
                    margin: EdgeInsets.all(15),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}