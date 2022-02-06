import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionAppScreen extends StatefulWidget {
  @override
  _IntroductionAppScreen createState() => _IntroductionAppScreen();
}

class _IntroductionAppScreen extends State<IntroductionAppScreen> {
  List<PageViewModel> listPagesViewModel() {
    return [
      PageViewModel(
        title: "Sauvegardez vos prescriptions",
        body:
            "Scannez le QR code chez votre médecin et sauvegarder la prescription sur votre smartphone.",
        image: Image.asset("assets/intro_screens/prescription_logo.png", height: 250.0,),
      ),
      PageViewModel(
        title: "Gagnez du temps",
        body:
            "Présentez votre QR code au pharmarcien, finie la galère du papier et place à la rapidité.",
        image: Image.asset("assets/intro_screens/hourglass.png", height: 250.0,),
      ),
      PageViewModel(
        title: "Suivez votre traitement",
        body:
            "Avec OrdonnanceDash, suivez votre traitement à la lettre avec un calendrier et des notifications automatiques.",
        image: Image.asset("assets/intro_screens/calendar.png", height: 250.0,),
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
          next: const Icon(Icons.navigate_next_rounded),
          done: const Text(
            "Done",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onDone: () {},
          onSkip: () {},
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))
          ),
          isTopSafeArea: true,
          isBottomSafeArea: true,
        ),
    );
  }
}
