enum Civilite { Monsieur, Madame, Docteur, Autre }

extension ParseToString on Civilite {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
