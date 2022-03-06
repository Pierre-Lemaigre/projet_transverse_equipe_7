import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';

abstract class Personne {
  String _nom;
  String _prenom;

  Personne(this._nom, this._prenom);

  String get nom => _nom;

  String get prenom => _prenom;
}
