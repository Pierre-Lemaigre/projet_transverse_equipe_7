import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController textControllerEdit;
  final String hint;

  const PasswordField(this.textControllerEdit, this.hint);

  @override
  State<PasswordField> createState() =>
      _PasswordFieldState(textEditController: textControllerEdit, hint: hint);
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscure = true;
  TextEditingController textEditController;
  String hint;

  _PasswordFieldState({required this.textEditController, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0)),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          suffixIcon: IconButton(
            icon: Icon(
              _obscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          )),
      obscureText: _obscure,
      enableSuggestions: false,
      autocorrect: false,
    );
  }
}
