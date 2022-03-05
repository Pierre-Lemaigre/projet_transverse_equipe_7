import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/model/helper/momentprise.dart';
import 'package:projet_transverse_equipe_7/model/medicament.dart';
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
  final _globalFormKey = GlobalKey<FormState>();
  final _nom = TextEditingController();
  final _prenom = TextEditingController();
  final _secusociale = TextEditingController();
  final _medicament = TextEditingController();
  final _reference = TextEditingController();
  final _consignes = TextEditingController();
  final _medicsFormKey = GlobalKey<FormState>();
  List<Widget> _recapMedicList = [];
  List<Medicament> _medsList = [];
  double fois = 0;
  double duree = 0;
  double renouvellement = 0;
  int checked = 0;
  bool matin = false;
  bool midi = false;
  bool soir = false;

  Widget _meds(Medicament medic) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(medic.nom),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 8, 4),
            child: Text(
                "${medic.priseParJour} par jour, pendant ${medic.dureeTraitement.inDays} jours"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 4, 8, 8),
            child: Text("${medic.denomination}"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double witdh = MediaQuery.of(context).size.width / 3.47;
    double height = MediaQuery.of(context).size.height / 1.55;
    return Form(
      key: _globalFormKey,
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
                          child: Form(
                            key: _medicsFormKey,
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
                                  changeState: (value) {
                                    setState(() {
                                      fois = value;
                                    });
                                  },
                                ),
                                WebIntSpinFormField(
                                  title: "Pendant X jours",
                                  minValue: 0,
                                  maxValue: 30,
                                  changeState: (value) {
                                    setState(() {
                                      duree = value;
                                    });
                                  },
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
                                  changeState: (value) {
                                    setState(() {
                                      renouvellement = value;
                                    });
                                  },
                                ),
                                WebSingleFormField(
                                  controller: _consignes,
                                  hint: "Prise pendant les repas",
                                  titleField: "Consignes",
                                ),
                                WebCheckBoxFieldForm(
                                  matinValue: (value) {
                                    if (matin != value) {
                                      if (matin)
                                        checked--;
                                      else
                                        checked++;
                                    }
                                    setState(() {
                                      matin = value;
                                    });
                                  },
                                  midiValue: (value) {
                                    if (midi != value) {
                                      if (midi)
                                        checked--;
                                      else
                                        checked++;
                                    }
                                    setState(() {
                                      midi = value;
                                    });
                                  },
                                  soirValue: (value) {
                                    if (soir != value) {
                                      if (soir)
                                        checked--;
                                      else
                                        checked++;
                                    }
                                    setState(() {
                                      soir = value;
                                    });
                                  },
                                ),
                                WebAdderFormField(
                                  buttonFunction: fois != checked
                                      ? null
                                      : () {
                                          if (_medicsFormKey.currentState!
                                              .validate()) {
                                            Medicament med = Medicament(
                                              cis: 0,
                                              denomination:
                                                  _reference.value.text,
                                              nom: _medicament.value.text,
                                              detail: _consignes.value.text,
                                              nombre: renouvellement.toInt(),
                                              dureeTraitement:
                                                  Duration(days: duree.toInt()),
                                              priseParJour: fois.toInt(),
                                            );
                                            if (matin)
                                              med.addMomentPrise(
                                                  MomentPrise.Matin);
                                            if (midi)
                                              med.addMomentPrise(
                                                  MomentPrise.Midi);
                                            if (soir)
                                              med.addMomentPrise(
                                                  MomentPrise.Soir);
                                            setState(() {
                                              _recapMedicList.add(_meds(med));
                                              _consignes.text = '';
                                              _reference.text = '';
                                              _medicament.text = '';
                                              _medsList.add(med);
                                              print('hello');
                                            });
                                          }
                                        },
                                  titleField: "Ajouter un médicament",
                                )
                              ],
                            ),
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
                                child: ListView.builder(
                                  itemCount: _recapMedicList.length,
                                  itemBuilder: (context, index) {
                                    return _recapMedicList[index];
                                  },
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
            onTap: () {
              print(jsonEncode(_medsList.first.momentPrise));
            },
          )
        ],
      ),
    );
  }
}
