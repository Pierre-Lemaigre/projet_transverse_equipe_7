import 'package:flutter_test/flutter_test.dart';
import 'package:projet_transverse_equipe_7/model/helper/momentprise.dart';

void main() {
  group("Prise attributs", () {
    test("Prise est Matin", () {
      MomentPrise matin = MomentPrise.Matin;
      expect(matin, MomentPrise.Matin);
    });

    test("Prise est Midi", () {
      MomentPrise midi = MomentPrise.Midi;
      expect(midi, MomentPrise.Midi);
    });

    test("Prise est Soir", () {
      MomentPrise soir = MomentPrise.Soir;
      expect(soir, MomentPrise.Soir);
    });
  });

  test("Prise donne une string", () {
    MomentPrise mat = MomentPrise.Matin;
    expect(mat.toShortString(), "Matin");
  });

  test("Une string donne Prise", () {
    MomentPrise mat =
        MomentPrise.values.firstWhere((e) => e.toShortString() == "Matin");
    expect(mat, MomentPrise.Matin);
  });

  group('Hashage', () {
    test('Moment prise peut être comparée', () {
      MomentPrise mid1 = MomentPrise.Midi;
      MomentPrise mid2 = MomentPrise.Midi;

      expect(mid1 == mid2, true);
    });

    test('Moment prise a un hash connu', () {
      MomentPrise mid = MomentPrise.Midi;

      expect(mid.toShortString().hashCode, 888103594);
    });
  });
}
