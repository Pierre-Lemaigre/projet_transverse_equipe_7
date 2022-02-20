import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/SignInForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Utils/title.dart';

class SignInPage extends StatefulWidget {
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
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TitleApp(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SignInForm(),
            )
          ],
        ),
      ),
    );
  }
}
