import 'dart:io';

void main() {
  print("Entrer n : ");

  int n = int.parse(stdin.readLineSync()!);

  int a = 0;
  int b = 1;

  for (int i = 0; i < n; i++) {
    print(a);

    int suivant = a + b;

    a = b;

    b = suivant;
  }
}
