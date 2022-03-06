import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/views/signUpPage.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/SignInForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Utils/title.dart';

class SignInPage extends StatefulWidget {
  static const String route = "/";
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TitleApp(),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: SignInForm(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Aucun compte? ",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "S'inscrire",
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.popAndPushNamed(context, SignUpPage.route);
                      },
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue
                      ),
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
