import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String value;
  InputField(this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(right: 5),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
        ),
        style: TextStyle(fontSize: 20),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty || RegExp(r'[a-zA-Z]+[_ -]$').hasMatch(value)) {
            return 'we need a number here!';
          }
          return null;
        },
        onSaved: (String? val) {
          this.value = val!;
        },
      ),
    );
  }
}
