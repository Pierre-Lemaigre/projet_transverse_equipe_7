import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/views/PrescriptionPage.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebButtonForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebPasswordFormField.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebSingleFormField.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _addressmail = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3.3;
    double height = MediaQuery.of(context).size.height / 2.7;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              "images/web/authentification/prescription_logo.png",
            ),
            width: 150,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 4),
            child: const Text(
              "Connexion",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
            child: Text(
              "Accéder à votre portail prescriptions",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  WebSingleFormField(
                    controller: _addressmail,
                    hint: "email@medecin.fr",
                    titleField: "Adresse email",
                  ),
                  WebPasswordFormField(
                    editingController: _password,
                    hint: "Super mot de passe",
                    titleField: "Mot de passe",
                  ),
                  WebButtonForm(buttonText: "Connexion",
                    onTap: () {
                      Navigator.pushNamed(context, PrescriptionPage.route);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
