import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/views/SignInPage.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/SignUpForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Utils/title.dart';

class SignUpPage extends StatelessWidget {
  static const String route = "/signup";

  const SignUpPage();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TitleApp(),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: SignUpForm(),
                  margin: EdgeInsets.all(15),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Déjà inscrit ? ",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Se connecter",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.popAndPushNamed(
                              context, SignInPage.route);
                        },
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
