import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PatientLoginPage.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'OrdonnanceDash',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Mode de fonctionnement',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 80),
                SizedBox(
                  height: 120,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>PatientLoginPage()));
                    },
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Mode Patient',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 12),
                              Text('Se connecter')
                            ]),
                        SizedBox(width: 80),
                        Image.asset('assets/images/login_page/login_mode_patient_logo.PNG',
                            height: 100),
                      ],
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
                SizedBox(height: 60),
                SizedBox(
                  height: 120,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Mode Pharmacie',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 12),
                              Text('Se connecter')
                            ]),
                        SizedBox(width: 55),
                        Image.asset(
                            'assets/images/login_page/login_mode_pharmacie_logo.png',
                            height: 90),
                      ],
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
              ],
            )
        )
    );
  }
}
