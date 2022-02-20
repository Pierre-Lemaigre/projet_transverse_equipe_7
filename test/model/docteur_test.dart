import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/docteur.dart';

void main() {
  group('Medecin attributs', () {
    Adresse adresse =
        Adresse(rue: "400 Rue Magenta", codePostal: 29200, ville: "Brest");
    Docteur doc = Docteur(
      id: 0,
      nom: "Patrick",
      prenom: "Jean",
      civilite: Civilite.Docteur,
      specialite: "docteur",
      adresse: adresse,
      unique_rpps: 10,
    );
    test('Docteur doit avoir un id', () {
      expect(doc.id, 0);
    });

    test('Docteur doit avoir un prenom', () {
      expect(doc.prenom, "Jean");
    });

    test('Docteur doit avoir un nom', () {
      expect(doc.nom, "Patrick");
    });

    test('Docteur doit avoir une civilite', () {
      expect(doc.civilite, Civilite.Docteur);
    });

    test('Docteur doit avoir une specialite', () {
      expect("docteur", doc.specialite);
    });

    test('Docteur doit avoir une adresse', () {
      expect("400 Rue Magenta", doc.adresse.rue);
      expect(29200, doc.adresse.codePostal);
      expect("Brest", doc.adresse.ville);
    });

    test('Docteur doit avoir un unique_rpps', () {
      expect(doc.unique_rpps, 10);
    });
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
        adresse: adr,
        unique_rpps: 10);

    expect(true, doc.exerciceAuthorized());
  });

  group('Hashage', () {
    test('Deux docteurs peuvent être comparés', () {
      Adresse adr = Adresse(
          rue: "11 rue des puits", codePostal: 94800, ville: "Villejuif");
      Docteur doc1 = Docteur(
          id: 0,
          nom: "Jean",
          prenom: "Louis",
          civilite: Civilite.Docteur,
          specialite: "docteur",
          adresse: adr,
          unique_rpps: 11);

      Docteur doc2 = Docteur(
          id: 0,
          nom: "Jean",
          prenom: "Louis",
          civilite: Civilite.Docteur,
          specialite: "docteur",
          adresse: adr,
          unique_rpps: 11);

      expect(doc1 == doc2, true);
    });

    test('Docteur a un hash connu', () {
      Adresse adr = Adresse(
          rue: "11 rue des puits", codePostal: 94800, ville: "Villejuif");
      Docteur doc1 = Docteur(
          id: 0,
          nom: "Jean",
          prenom: "Louis",
          civilite: Civilite.Docteur,
          specialite: "docteur",
          adresse: adr,
          unique_rpps: 11);

      expect(doc1.hashCode, 473523355);
      expect(doc1.hashCode, 473523355);
    });
  });
}
