import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebSingleFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String titleField;

  const WebSingleFormField(
      {required this.controller, required this.hint, required this.titleField});

  @override
  _WebSingleFormFieldState createState() => _WebSingleFormFieldState(
      controller: controller, hint: hint, titleField: titleField);
}

class _WebSingleFormFieldState extends State<WebSingleFormField> {
  TextEditingController controller;
  String hint;
  String titleField;

  _WebSingleFormFieldState(
      {required this.controller, required this.hint, required this.titleField});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            titleField,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey.shade900),
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0)),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
          ),
          obscureText: false,
          enableSuggestions: true,
          autocorrect: true,
        ),
      ]),
    );
  }
}
