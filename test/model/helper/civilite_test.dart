import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';

void main() {
  group("Civilite attribut", () {
    test("Civilite est monsieur", () {
      Civilite ci = Civilite.Monsieur;
      expect(ci, Civilite.Monsieur);
    });

    test("Civilite est Madame", () {
      Civilite ci = Civilite.Madame;
      expect(ci, Civilite.Madame);
    });

    test("Civilite est Docteur", () {
      Civilite ci = Civilite.Docteur;
      expect(ci, Civilite.Docteur);
    });
  });

  test("Civilite convert to string", () {
    Civilite ci = Civilite.Monsieur;
    expect(ci.toShortString(), "Monsieur");
  });

  test("Converte String to Civilite", () {
    String mon = "Monsieur";
    Civilite ci = Civilite.values.firstWhere((e) => e.toShortString() == mon);
    expect(ci, Civilite.Monsieur);
  });
}
