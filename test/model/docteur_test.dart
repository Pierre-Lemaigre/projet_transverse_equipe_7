import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/docteur.dart';

void main() {
  test('Docteur doit avoir une specialite', () {
    Adresse adresse =
        Adresse(rue: "400 Rue Magenta", codePostal: 29200, ville: "Brest");
    Docteur doc = Docteur(
        id: 0,
        nom: "Patrick",
        prenom: "Jean",
        civilite: Civilite.Docteur,
        specialite: "docteur",
        adresse: adresse);

    expect("docteur", doc.specialite);
  });

  test('Docteur doit avoir une adresse', () {
    Adresse adresse =
        Adresse(rue: "400 Rue Magenta", codePostal: 29200, ville: "Brest");
    Docteur doc = Docteur(
        id: 0,
        nom: "Patrick",
        prenom: "Jean",
        civilite: Civilite.Docteur,
        specialite: "docteur",
        adresse: adresse);

    expect("400 Rue Magenta", doc.adresse.rue);
    expect(29200, doc.adresse.codePostal);
    expect("Brest", doc.adresse.ville);
  });

  test('Docteur peuvent donner des prescriptions', () {
    Adresse adr =
        Adresse(rue: "400 rue Magenta", codePostal: 29200, ville: "Brest");
    Docteur doc = Docteur(
        id: 0,
        nom: "Pat",
        prenom: "Jean",
        civilite: Civilite.Docteur,
        specialite: "docteur",
        adresse: adr);

    expect(true, doc.exerciceAuthorized());
  });
}
