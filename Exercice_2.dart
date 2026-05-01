String transformerChaine(String s) {
  // Extraire les chiffres dans l'ordre, puis les inverser
  List<String> chiffres = s.split('').where((c) => RegExp(r'\d').hasMatch(c)).toList();
  List<String> chiffresInverses = chiffres.reversed.toList();

  int indexChiffre = 0;
  StringBuffer resultat = StringBuffer();

  for (int i = 0; i < s.length; i++) {
    String c = s[i];

    if (RegExp(r'[a-z]').hasMatch(c)) {
      resultat.write(c.toUpperCase()); // minuscule → majuscule
    } else if (RegExp(r'[A-Z]').hasMatch(c)) {
      resultat.write(c.toLowerCase()); // majuscule → minuscule
    } else if (RegExp(r'\d').hasMatch(c)) {
      resultat.write(chiffresInverses[indexChiffre++]); // chiffre inversé
    } else {
      resultat.write(c); // caractère spécial inchangé
    }
  }

  return resultat.toString();
}

// Test
void main() {
  print(transformerChaine("aB3c!2")); // → "Ab2C!3"
}
