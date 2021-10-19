enum MomentPrise { Matin, Midi, Soir }

extension ParseToString on MomentPrise {
  String toShortString() {
    return this.toString().split('.').last;
  }
}