import 'package:flutter/material.dart';

class WebAdderFormField extends StatefulWidget {
  final String titleField;

  const WebAdderFormField({Key? key, required this.titleField})
      : super(key: key);

  @override
  _WebAdderFormFieldState createState() => _WebAdderFormFieldState(
        title: this.titleField,
      );
}

class _WebAdderFormFieldState extends State<WebAdderFormField> {
  String title;

  _WebAdderFormFieldState({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey.shade900),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline_rounded),
            splashRadius: 25,
          )
        ],
      ),
    );
  }
}
