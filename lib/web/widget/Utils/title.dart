import 'package:flutter/widgets.dart';

class TitleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "OrdonnanceDash",
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
          textAlign: TextAlign.left,
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