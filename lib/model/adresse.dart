import 'package:flutter/cupertino.dart';

class Adresse {
  String rue;
  int codePostal;
  String ville;
  String? complements;

  Adresse(
      {required this.rue,
      required this.codePostal,
      required this.ville,
      this.complements});

  @override
  bool operator ==(oth) =>
      oth is Adresse &&
      rue == oth.rue &&
      codePostal == oth.codePostal &&
      ville == oth.ville &&
      complements == oth.complements;

  @override
  int get hashCode => hashValues(rue, codePostal, ville, complements);
}
