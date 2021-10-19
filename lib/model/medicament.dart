import 'package:projet_transverse_equipe_7/model/helper/momentprise.dart';

class Medicament {
  String nom;
  String detail;
  int nombre;
  Duration dureeTraitement;
  int priseParJour;
  Set<MomentPrise> momentPrise;

  Medicament({required this.nom,
    required this.detail,
    required this.priseParJour,
    required this.nombre,
    required this.dureeTraitement})
      : momentPrise = <MomentPrise>{};

  addMomentPrise(MomentPrise prise) {
    momentPrise.add(prise);
  }
}
