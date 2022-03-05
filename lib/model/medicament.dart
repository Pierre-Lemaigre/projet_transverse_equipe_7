import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:projet_transverse_equipe_7/model/helper/momentprise.dart';

class Medicament {
  int cis;
  String denomination;
  String nom;
  String detail;
  int nombre;
  Duration dureeTraitement;
  int priseParJour;
  List<MomentPrise> momentPrise;

  Medicament(
      {required this.cis,
      required this.denomination,
      required this.nom,
      required this.detail,
      required this.priseParJour,
      required this.nombre,
      required this.dureeTraitement})
      : momentPrise = <MomentPrise>[];

  void addMomentPrise(MomentPrise prise) {
    if (priseParJour > momentPrise.length) momentPrise.add(prise);
  }

  @override
  bool operator ==(oth) =>
      oth is Medicament &&
      cis == oth.cis &&
      nom == oth.nom &&
      denomination == oth.denomination &&
      detail == oth.detail &&
      priseParJour == oth.priseParJour &&
      nombre == oth.nombre &&
      dureeTraitement == oth.dureeTraitement &&
      listEquals(momentPrise, oth.momentPrise);

  @override
  int get hashCode => hashValues(
      cis,
      denomination,
      nom,
      detail,
      priseParJour,
      nombre,
      dureeTraitement,
      hashList(momentPrise.map((e) => e.toShortString())));

  Map<String, dynamic> toJson() => {
    'cis': cis,
    'nom': nom,
    'denomination': denomination,
    'detail': detail,
    'renouvellement': nombre,
    'duree': dureeTraitement.inDays,
    'prise_jour': priseParJour,
    'moment_prise': jsonEncode(momentPrise)
  };
}
