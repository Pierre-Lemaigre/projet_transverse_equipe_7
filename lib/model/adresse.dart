class Adresse {
  String rue;
  int codePostal;
  String ville;
  String? complements;

  Adresse(
      {required this.rue,
      required this.codePostal,
      required this.ville,
      this.complements});

  @override
  bool operator ==(Object other) {
    if (other is! Adresse)
      throw ArgumentError('Expected Adresse, but was ${other.runtimeType}');
    return rue == other.rue &&
        codePostal == other.codePostal &&
        ville == other.ville &&
        complements == other.complements;
  }
}
