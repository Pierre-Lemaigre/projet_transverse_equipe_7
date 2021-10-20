enum Civilite { Monsieur, Madame, Docteur, Sans }

extension ParseToString on Civilite {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
