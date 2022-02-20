import 'package:flutter/material.dart';

class ReturnPageHeader extends StatelessWidget {

  String title;
  Widget widget;

  ReturnPageHeader({required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
              color: Colors.black,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => this.widget)
              )
          ),
          Text(
              this.title,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              )
          )
        ],
      ),
    );
  }
}
