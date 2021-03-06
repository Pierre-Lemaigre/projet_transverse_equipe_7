import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/views/SignInPage.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/SignInForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebButtonForm.dart';

import 'customFields/WebDropdownFormField.dart';
import 'customFields/WebDuoFormField.dart';
import 'customFields/WebFileFormField.dart';
import 'customFields/WebPasswordFormField.dart';
import 'customFields/WebSingleFormField.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm();

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _adressMail = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _nom = TextEditingController();
  final _prenom = TextEditingController();
  final _adresse = TextEditingController();
  final _ville = TextEditingController();
  final _codePostal = TextEditingController();
  final _region = TextEditingController();
  final _departement = TextEditingController();
  final _discipline = TextEditingController();
  final _titreMedecin = TextEditingController();
  bool _validForm = false;

  @override
  Widget build(BuildContext context) {
    double widthCard = MediaQuery.of(context).size.width / 3.3;
    double heigthCard = MediaQuery.of(context).size.height / 1.65;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 24),
            child: Text(
              "Inscription",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: heigthCard,
                width: widthCard,
                padding: EdgeInsets.all(15),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  color: Colors.teal[50],
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 25.0,
                            bottom: 15,
                          ),
                          child: Text(
                            "Informations de connexion",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        WebSingleFormField(
                          controller: _adressMail,
                          hint: "email@example.com",
                          titleField: "Adresse Mail",
                        ),
                        WebPasswordFormField(
                          editingController: _password,
                          hint: "Super mot de passe",
                          titleField: "Mot de Passe",
                        ),
                        WebPasswordFormField(
                          editingController: _confirmPassword,
                          hint: "Super mot de passe",
                          titleField: "Confirmez le mot de Passe",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: heigthCard,
                width: widthCard,
                padding: EdgeInsets.all(15),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  color: Colors.green[50],
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 25.0,
                            bottom: 15,
                          ),
                          child: Text(
                            "Informations personnelles",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        WebSingleFormField(
                          controller: _nom,
                          titleField: 'Nom',
                          hint: 'Roux',
                        ),
                        WebSingleFormField(
                          controller: _prenom,
                          titleField: "Pr??nom",
                          hint: "Thomas",
                        ),
                        WebDuoFormField(
                          textController1: _region,
                          hint1: "Ile-de-France",
                          textField1: "R??gion",
                          textController2: _departement,
                          hint2: "Paris",
                          textField2: "D??partement",
                        ),
                        WebSingleFormField(
                          controller: _adresse,
                          hint: "57, Place de la Madelaine",
                          titleField: "Adresse",
                        ),
                        WebDuoFormField(
                          textController1: _ville,
                          hint1: "Paris",
                          textField1: "Ville",
                          textController2: _codePostal,
                          hint2: "75013",
                          textField2: "Code Postal",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: heigthCard,
                width: widthCard,
                padding: EdgeInsets.all(15),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  color: Colors.lightBlue[50],
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 25.0,
                            bottom: 15,
                          ),
                          child: Text(
                            "Informations d'exercice",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        WebSingleFormField(
                          controller: _discipline,
                          hint: "Neurologie",
                          titleField: "Discipline",
                        ),
                        WebSingleFormField(
                          controller: _titreMedecin,
                          hint: "Docteur",
                          titleField: "Titre",
                        ),
                        Container(
                          child: WebDropdownFormField(
                            tf1: "Statut",
                            items: [
                              "En activit??",
                              "Retrait??",
                              "Indiff??rent",
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        WebFileFormField(
                          tf1: "Ajouter un dipl??me",
                          tf2: "Ajouter une identit??",
                          iconPath1: "images/web/inscription/diplome.png",
                          iconPath2: "images/web/inscription/identite.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          WebButtonForm(
            buttonText: 'Inscription',
            onTap: () {
              Navigator.pushReplacementNamed(context, SignInPage.route);
            },
          ),
        ],
      ),
    );
  }
}
