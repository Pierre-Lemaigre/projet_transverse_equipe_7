import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/helper/momentprise.dart';
import 'package:projet_transverse_equipe_7/model/medicament.dart';

void main() {
  group("Medicament attributs", () {
    Duration duration = Duration(days: 20);
    Medicament medicament = Medicament(
      nom: "paracetamol",
      nombre: 1,
      dureeTraitement: duration,
      priseParJour: 2,
      detail: "Aucun"
    );

    test("Medicament a un nom", () {
      expect(medicament.nom, "paracetamol");
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

  test("On peut ajouter un moment de prise", () {
    Duration duration = Duration(days: 20);
    Medicament medicament = Medicament(
        nom: "paracetamol",
        nombre: 1,
        dureeTraitement: duration,
        priseParJour: 2,
        detail: "Aucun"
    );
    medicament.addMomentPrise(MomentPrise.Matin);
    medicament.addMomentPrise(MomentPrise.Matin);
    expect(medicament.momentPrise.first, MomentPrise.Matin);
  });
}