import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/personne.dart';

class Patient extends Personne {
  String lieuNaissance;
  DateTime dateNaissance;
  Adresse adresse;
  String numSS;
  List ordonnances;

  Patient(
      {required int id,
      required String nom,
      required String prenom,
      required Civilite civilite,
      required this.lieuNaissance,
      required this.dateNaissance,
      required this.adresse,
      required this.numSS})
      : ordonnances = [],
        super(id, nom, prenom, civilite);
}
