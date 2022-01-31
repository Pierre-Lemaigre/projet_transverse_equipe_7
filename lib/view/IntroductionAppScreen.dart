import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionAppScreen extends StatefulWidget {
  @override
  _IntroductionAppScreen createState() => _IntroductionAppScreen();
}

class _IntroductionAppScreen extends State<IntroductionAppScreen> {
  List<PageViewModel> listPagesViewModel() {
    return [PageViewModel(
      title: "Title",
      body: "Explaination"
    ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: listPagesViewModel(),
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Text("Next"),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600),),
        onDone: () {},
        onSkip: () {},
      ),
    );
  }}