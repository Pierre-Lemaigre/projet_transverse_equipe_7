import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/patient.dart';

void main() {
  group("Patient attributs", () {
    DateTime date = DateTime(1998, 7, 8);
    Adresse adr =
        Adresse(rue: "11 Rue lila", codePostal: 44120, ville: "Vertou");
    Patient patient = Patient(
        id: 0,
        nom: "Jean",
        prenom: "Louis",
        civilite: Civilite.Monsieur,
        lieuNaissance: "Paris",
        dateNaissance: date,
        adresse: adr,
        numSS: "1057549588157");

    test("Patient a un nom", () {
      expect(patient.nom, "Jean");
    });

    test("Patient a un prenom", () {
      expect(patient.prenom, "Louis");
    });

    test("Patient a une civilite", () {
      expect(patient.civilite.toShortString(), "Monsieur");
    });

    test("Patient a un lieu de naissance", () {
      expect(patient.lieuNaissance, "Paris");
    });

    test("Patient a une date de naissance", () {
      DateTime date = DateTime(1998, 7, 8);
      expect(patient.dateNaissance, date);
    });

    test("Patient a une adresse", () {
      Adresse adr =
          Adresse(rue: "11 Rue lila", codePostal: 44120, ville: "Vertou");
      expect(patient.adresse, adr);
    });

    test("Patient a un numero de securite sociale", () {
      expect(patient.numSS, "1057549588157");
    });

    test("Patient a une liste d'ordonnance", () {
      expect(patient.ordonnances, List.empty());
    });
  });
}
