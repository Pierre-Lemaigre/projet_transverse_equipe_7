import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/helper/momentprise.dart';
import 'package:projet_transverse_equipe_7/model/medicament.dart';

void main() {
  group("Medicament attributs", () {
    Duration duration = Duration(days: 20);
    Medicament medicament = Medicament(
        cis: 00000001,
        denomination: "paracetamol",
        nombre: 1,
        dureeTraitement: duration,
        priseParJour: 2,
        detail: "Aucun");

    test("Medicament a un nom", () {
      expect(medicament.denomination, "paracetamol");
    });

    test("Medicament a un nombre", () {
      expect(medicament.nombre, 1);
    });

    test("Medicament a une duree de traitement", () {
      expect(medicament.dureeTraitement, Duration(days: 20));
    });

    test("Medicament a un nombre de prise par jour", () {
      expect(medicament.priseParJour, 2);
    });

    test("Medicament a une liste de moment de prises", () {
      expect(medicament.momentPrise, []);
    });

    test("Medicament a un detail", () {
      expect(medicament.detail, "Aucun");
    });
  });

  group("Moment Prise", () {
    test("On peut ajouter un moment de prise", () {
      Duration duration = Duration(days: 20);
      Medicament medicament = Medicament(
          cis: 00000001,
          denomination: "paracetamol",
          nombre: 1,
          dureeTraitement: duration,
          priseParJour: 2,
          detail: "Aucun");
      medicament.addMomentPrise(MomentPrise.Matin);
      medicament.addMomentPrise(MomentPrise.Matin);
      expect(medicament.momentPrise.first, MomentPrise.Matin);
      expect(medicament.momentPrise.length, 2);
    });

    test("Pas d'ajout de moment prise > priseParJour", () {
      Duration duration = Duration(days: 20);
      Medicament medicament = Medicament(
          cis: 00000001,
          denomination: "paracetamol",
          nombre: 1,
          dureeTraitement: duration,
          priseParJour: 2,
          detail: "Aucun");
      medicament.addMomentPrise(MomentPrise.Matin);
      medicament.addMomentPrise(MomentPrise.Midi);
      medicament.addMomentPrise(MomentPrise.Soir);
      expect(medicament.momentPrise.first, MomentPrise.Matin);
      expect(medicament.momentPrise.length, 2);
    });
  });

  group("Hashage", () {
    test("On peut comparer deux medicaments", () {
      Duration duration = Duration(days: 20);
      Medicament m1 = Medicament(
          cis: 00000001,
          denomination: "paracetamol",
          nombre: 1,
          dureeTraitement: duration,
          priseParJour: 2,
          detail: "Aucun");
      m1.addMomentPrise(MomentPrise.Matin);

      Medicament m2 = Medicament(
          cis: 00000001,
          denomination: "paracetamol",
          nombre: 1,
          dureeTraitement: duration,
          priseParJour: 2,
          detail: "Aucun");
      m2.addMomentPrise(MomentPrise.Matin);

      expect(m1 == m2, true);
    });

    test("Un medicament a un hash connu", () {
      Duration duration = Duration(days: 20);
      Medicament medicament = Medicament(
          cis: 00000001,
          denomination: "paracetamol",
          nombre: 1,
          dureeTraitement: duration,
          priseParJour: 2,
          detail: "Aucun");

      medicament.addMomentPrise(MomentPrise.Matin);
      medicament.addMomentPrise(MomentPrise.Matin);

      expect(medicament.hashCode, 498016452);
      expect(medicament.hashCode, 498016452);
    });
  });
}
