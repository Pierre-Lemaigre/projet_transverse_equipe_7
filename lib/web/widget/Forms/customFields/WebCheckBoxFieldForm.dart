import 'package:flutter/material.dart';

class WebCheckBoxFieldForm extends StatefulWidget {
  final void Function(bool value) matinValue;
  final void Function(bool value) midiValue;
  final void Function(bool value) soirValue;

  const WebCheckBoxFieldForm(
      {Key? key,
      required this.matinValue,
      required this.midiValue,
      required this.soirValue})
      : super(key: key);

  @override
  _WebCheckBoxFieldFormState createState() => _WebCheckBoxFieldFormState();
}

class _WebCheckBoxFieldFormState extends State<WebCheckBoxFieldForm> {
  bool matin = false;
  bool midi = false;
  bool soir = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Moment Prise",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.grey.shade900),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        "Matin",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: matin,
                      onChanged: (bool? value) {
                        setState(() {
                          matin = value!;
                        });
                        widget.matinValue(matin);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        "Midi",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: midi,
                      onChanged: (bool? value) {
                        setState(() {
                          midi = value!;
                        });
                        widget.midiValue(midi);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        "Soir",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Checkbox(
                      value: soir,
                      onChanged: (bool? value) {
                        setState(() {
                          soir = value!;
                        });
                        widget.soirValue(soir);
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}