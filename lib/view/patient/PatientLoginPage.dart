import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientLoginPage extends StatefulWidget {
  @override
  PatientLoginPageState createState() => PatientLoginPageState();
}

class PatientLoginPageState extends State<PatientLoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/images/logo/text_logo.png'),
                SizedBox(height: 50),
                Container(
                  height:250,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold

                        ),),
                        SizedBox(height: 30),
                        Container(
                          width: 250,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('id patient'),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true
                            ),
                            textAlignVertical: TextAlignVertical.bottom
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 250,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: ('password'),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true
                            ),
                            obscureText: true,
                            textAlignVertical: TextAlignVertical.bottom
                          ),
                        )
                      ]
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                )
                ]
            )
        )
    );
  }
}
