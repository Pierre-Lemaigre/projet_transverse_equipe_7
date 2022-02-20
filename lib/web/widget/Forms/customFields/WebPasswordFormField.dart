import 'package:flutter/material.dart';

import 'PasswordField.dart';

class WebPasswordFormField extends StatefulWidget {
  final TextEditingController editingController;
  final String titleField;
  final String hint;

  const WebPasswordFormField(
      {required this.editingController,
      required this.titleField,
      required this.hint});

  @override
  _WebPasswordFormFieldState createState() =>
      _WebPasswordFormFieldState(editingController, titleField, hint);
}

class _WebPasswordFormFieldState extends State<WebPasswordFormField> {
  TextEditingController editingController;
  String titleField;
  String hint;

  _WebPasswordFormFieldState(
      this.editingController, this.titleField, this.hint);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            titleField,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        PasswordField(editingController, hint),
      ]),
    );
  }
}
