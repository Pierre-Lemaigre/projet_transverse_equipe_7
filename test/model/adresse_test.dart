import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';

void main() {
  test('Adresse a une rue', () {
    Adresse adr =
        Adresse(rue: "11 rue des lilas", codePostal: 44120, ville: "Vertou");

    expect(adr.rue, "11 rue des lilas");
  });

  test('Adresse a un code postal', () {
    Adresse adr =
        Adresse(rue: "11 rue des lilas", codePostal: 44120, ville: "Vertou");

    expect(adr.codePostal, 44120);
  });

  test('Adresse a un code postal', () {
    Adresse adr =
        Adresse(rue: "11 rue des lilas", codePostal: 44120, ville: "Vertou");

    expect(adr.ville, "Vertou");
  });

  test('Deux Adresses peuvent etre comparee avec ==', () {
    Adresse adr =
        Adresse(rue: "11 rue des lilas", codePostal: 44120, ville: "Vertou");
    Adresse adr2 =
        Adresse(rue: "11 rue des lilas", codePostal: 44120, ville: "Vertou");
    Adresse adr3 = Adresse(
        rue: "11 rue des lilas",
        codePostal: 44120,
        ville: "Vertou",
        complements: "Appt 26");

    assert(adr2 == adr);
    assert(adr3 != adr);
    assert(adr3 == adr3);
    expect(() => adr == Object, throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Adresse peut voir ses membres etre modifies', () {
    Adresse adr3 = Adresse(
        rue: "11 rue des lilas",
        codePostal: 44120,
        ville: "Vertou",
        complements: "Appt 26");
    adr3.rue = "10 rue des lilas";
    adr3.codePostal = 44000;
    adr3.ville = "Nantes";
    adr3.complements = "Appt 25";

    expect(adr3.rue, "10 rue des lilas");
    expect(adr3.codePostal, 44000);
    expect(adr3.ville, "Nantes");
    expect(adr3.complements, "Appt 25");
  });
}
