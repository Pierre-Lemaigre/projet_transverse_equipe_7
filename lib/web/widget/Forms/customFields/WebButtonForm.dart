import 'package:flutter/material.dart';

class WebButtonForm extends StatefulWidget {
  final String buttonText;
  final VoidCallback? onTap;
  const WebButtonForm({Key? key, required this.buttonText, required this.onTap}) : super(key: key);

  @override
  _WebButtonFormState createState() => _WebButtonFormState(buttonText: buttonText);
}

class _WebButtonFormState extends State<WebButtonForm> {
  String buttonText;

  _WebButtonFormState({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3.3;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20, horizontal: width/2.70)),
          backgroundColor:
          MaterialStateProperty.all<Color>(Color.fromRGBO(111, 168, 220, 1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              )
          ),
        ),
        onPressed: widget.onTap,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade900,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
