import 'package:flutter/material.dart';

class TreatmentCard extends StatefulWidget {
  const TreatmentCard (
      {
        Key? key,
        required this.cardColor,
        required this.imagePath,
        required this.medecine_name,
        required this.pills,
        required this.trmt_desc
      }) : super(key: key);

  final String imagePath;
  final String medecine_name;
  final int pills;
  final Color? cardColor;
  final String trmt_desc;
  @override
  _TreatmentCardState createState() => _TreatmentCardState();
}

class _TreatmentCardState extends State<TreatmentCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        padding: EdgeInsets.all(15),
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
            color: widget.cardColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Image.asset(
                  widget.imagePath,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain
                )
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                        widget.medecine_name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                      '${widget.pills} ${widget.trmt_desc}'
                  )
                ],
              ),
            ),
            Expanded(
              child: Transform.scale(
                scale: 1.7,
                child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
              ),
            ),
          ],
        )
    );
  }

  Color getColor(Set<MaterialState> states) {
    return Colors.black;
  }
}
