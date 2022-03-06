import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';

abstract class Personne {
  final int id;
  String _nom;
  String _prenom;
  Civilite _civilite;

  Personne(this.id, this._nom, this._prenom, this._civilite);

  String get nom => _nom;

  String get prenom => _prenom;

  Civilite get civilite => _civilite;
}
