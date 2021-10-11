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
          body: Center(child: HomePage(onPressed: () => true,)),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello World!'),
        ElevatedButton(
          onPressed: () => onPressed.call(),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          child: Row(
            children: [
              Icon(
                Icons.wb_sunny,
                key: Key('icon_weather'),
              ),
              Text('Weather today'),
            ],
          ),
        ),
      ],
    );
  }
}
