import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownField extends StatefulWidget {
  final String dropdownValueI;
  final List<String> itemValue;

  const DropDownField(this.itemValue, this.dropdownValueI);

  @override
  State<DropDownField> createState() =>
      _DropDownFieldState(dropDownValue: dropdownValueI, itemsList: itemValue);
}

class _DropDownFieldState extends State<DropDownField> {
  String dropDownValue;
  List<String> itemsList;

  _DropDownFieldState({required this.dropDownValue, required this.itemsList});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      autofocus: false,
      value: dropDownValue,
      elevation: 16,
      dropdownColor: Colors.white,
      onChanged: (String? newValue) {
        setState(() {
          dropDownValue = newValue!;
        });
      },
      items: itemsList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

