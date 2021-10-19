import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello World!'),
          ElevatedButton(
            key: Key('button_today'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.blue
            ),
            child: Row(
              children: [
                Icon(
                  Icons.wb_sunny,
                  key: Key('icon_weather'),
                ),
                Text('Weather today')
              ],
            ),
          ),
          ElevatedButton(
            key: Key('button_tomorrow'),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.wb_cloudy,
                  key: Key('icon_weather_2'),
                ),
                Text('Weather Tomorrow'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
