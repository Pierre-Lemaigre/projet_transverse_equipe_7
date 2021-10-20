import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/personne.dart';

class Docteur extends Personne {
  String specialite;
  Adresse adresse;

  Docteur(
      {required int id,
      required String nom,
      required String prenom,
      required Civilite civilite,
      required this.specialite,
      required this.adresse})
      : super(id, nom, prenom, civilite);

  bool exerciceAuthorized() {
    // TODO: implement exerciceAuthorized
    return true;
  }
}
