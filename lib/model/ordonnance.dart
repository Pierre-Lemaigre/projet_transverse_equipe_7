import 'dart:convert';

import 'package:projet_transverse_equipe_7/model/medicament.dart';
import 'package:projet_transverse_equipe_7/model/patient.dart';

class Ordonnance {
  Patient patient;
  List<Medicament> medicaments;
  int hash;

  Ordonnance({required this.patient, required this.medicaments, required this.hash});

  Map<String, dynamic> toJson() => {
    'patient' : jsonEncode(patient),
    'medicaments' : jsonEncode(medicaments),
    'hash' : hash,
  };
}