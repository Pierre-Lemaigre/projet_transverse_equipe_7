import 'package:flutter/material.dart';

import 'FilePickerField.dart';

class WebFileFormField extends StatefulWidget {
  final String tf1;
  final String tf2;
  final String iconPath1;
  final String iconPath2;

  const WebFileFormField(
      {required this.tf1,
      required this.tf2,
      required this.iconPath1,
      required this.iconPath2});

  @override
  _WebFileFormFieldState createState() => _WebFileFormFieldState(
      this.tf1, this.tf2, this.iconPath1, this.iconPath2);
}

class _WebFileFormFieldState extends State<WebFileFormField> {
  String tf1;
  String tf2;
  String icon_path1;
  String icon_path2;

  _WebFileFormFieldState(this.tf1, this.tf2, this.icon_path1, this.icon_path2);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3.3;
    return SizedBox(
      width: width - 10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0, left: 5),
                    child: Text(
                      tf1,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey.shade900),
                    ),
                  ),
                  FilePickerForm(icone: icon_path1),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      tf2,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey.shade900),
                    ),
                  ),
                  FilePickerForm(
                    icone: icon_path2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
