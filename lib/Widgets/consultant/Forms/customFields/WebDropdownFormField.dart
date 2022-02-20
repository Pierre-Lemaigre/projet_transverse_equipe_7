import 'package:flutter/material.dart';

import 'DropDownField.dart';

class WebDropdownFormField extends StatefulWidget {
  final String tf1;
  final List<String> items;
  const WebDropdownFormField({required this.tf1, required this.items});

  @override
  _WebDropdownFormFieldState createState() => _WebDropdownFormFieldState(this.tf1, this.items);
}

class _WebDropdownFormFieldState extends State<WebDropdownFormField> {
  String t1;
  List<String> items;

  _WebDropdownFormFieldState(this.t1, this.items);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            t1,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
              child: DropDownField(items, items.first),
            )),
      ]),
    );
  }
}
