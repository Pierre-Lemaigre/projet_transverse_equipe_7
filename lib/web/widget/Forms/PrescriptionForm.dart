import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebAdderFormField.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebButtonForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebCheckBoxFieldForm.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebIntSpinFormField.dart';
import 'package:projet_transverse_equipe_7/web/widget/Forms/customFields/WebSingleFormField.dart';

class PrescriptionForm extends StatefulWidget {
  const PrescriptionForm({Key? key}) : super(key: key);

  @override
  _PrescriptionFormState createState() => _PrescriptionFormState();
}

class _PrescriptionFormState extends State<PrescriptionForm> {
  final _nom = TextEditingController();
  final _prenom = TextEditingController();
  final _secusociale = TextEditingController();
  final _medicament = TextEditingController();
  final _reference = TextEditingController();
  final _consignes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double witdh = MediaQuery.of(context).size.width / 3.47;
    double height = MediaQuery.of(context).size.height / 1.55;
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 4),
            child: const Text(
              "Prescrire une ordonnance",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: witdh,
                      height: height,
                      child: Card(
                        color: Color.fromRGBO(180, 167, 214, 0.15),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  bottom: 15,
                                ),
                                child: Text(
                                  "Informations Patient",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              WebSingleFormField(
                                controller: _nom,
                                hint: "Roux",
                                titleField: "Nom",
                              ),
                              WebSingleFormField(
                                controller: _prenom,
                                hint: "Louis",
                                titleField: "Prénom",
                              ),
                              WebSingleFormField(
                                controller: _secusociale,
                                hint: "1 90 12 44 113 492",
                                titleField: "Numéro de sécurité sociale",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height,
                      width: witdh,
                      child: Card(
                        color: Color.fromRGBO(194, 123, 160, 0.15),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  bottom: 15,
                                ),
                                child: Text(
                                  "Médicaments",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              WebSingleFormField(
                                controller: _medicament,
                                hint: "Nom médicament",
                                titleField: "Médicaments",
                              ),
                              WebIntSpinFormField(
                                title: "Fois par jour",
                                minValue: 0,
                                maxValue: 10,
                              ),
                              WebIntSpinFormField(
                                title: "Pendant X jours",
                                minValue: 0,
                                maxValue: 30,
                              ),
                              WebSingleFormField(
                                controller: _reference,
                                hint: "MTE NR QCP AR",
                                titleField: "Référence",
                              ),
                              WebIntSpinFormField(
                                title: "Renouvellement",
                                minValue: 0,
                                maxValue: 11,
                              ),
                              WebSingleFormField(
                                controller: _consignes,
                                hint: "Prise pendant les repas",
                                titleField: "Consignes",
                              ),
                              WebCheckBoxFieldForm(),
                              WebAdderFormField(
                                titleField: "Ajouter un médicament",
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height,
                      width: witdh,
                      child: Card(
                        color: Color.fromRGBO(162, 196, 201, 0.15),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15,
                                ),
                                child: Text(
                                  "Récapitulatif",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: witdh - 75,
                                height: height - 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          WebButtonForm(
            buttonText: "Générer Ordonnance",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
