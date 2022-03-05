import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class WebIntSpinFormField extends StatefulWidget {
  final String title;
  final double minValue;
  final double maxValue;

  const WebIntSpinFormField({
    Key? key,
    required this.title,
    required this.minValue,
    required this.maxValue,
  }) : super(key: key);

  @override
  _WebIntSpinFormFieldState createState() => _WebIntSpinFormFieldState(
        t1: title,
        minValue: minValue,
        maxValue: maxValue,
      );
}

class _WebIntSpinFormFieldState extends State<WebIntSpinFormField> {
  String t1;
  double minValue;
  double maxValue;

  _WebIntSpinFormFieldState({
    required this.t1,
    required this.minValue,
    required this.maxValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Text(
              t1,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey.shade900),
            ),
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: SpinBox(
              incrementIcon: Icon(Icons.arrow_forward_rounded),
              decrementIcon: Icon(Icons.arrow_back_rounded),
              min: minValue,
              max: maxValue,
              value: 0,
              spacing: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
