import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projet_transverse_equipe_7/web/views/SignInPage.dart';

class TitleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => {
            Navigator.pushReplacementNamed(context, SignInPage.route)
          },
          child: Text(
            "OrdonnanceDash",
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
            textAlign: TextAlign.left,
          ),
        ),
        Text(
          "Portail Prescriptions",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          textAlign: TextAlign.left,
        )
      ],
    );
  }

}