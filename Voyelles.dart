import 'dart:io';

void main() {
  print("Entrer une phrase : ");

  String phrase = stdin.readLineSync()!;

  int compteur = 0;
  String voyelles = "aeyuioAEYUIO";

  for (int i = 0; i < phrase.length; i++) {
    if (voyelles.contains(phrase[i])) {
      compteur++;
    }

    print("Nombre de voyelles : $compteur");
  }
}
