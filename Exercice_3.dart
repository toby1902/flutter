int plusGrandeDifference(List<int> liste) {
  if (liste.length < 2) throw ArgumentError("Liste trop courte");

  int maxDiff = 0;

  for (int i = 0; i < liste.length - 1; i++) {
    int diff = (liste[i + 1] - liste[i]).abs();
    if (diff > maxDiff) maxDiff = diff;
  }

  return maxDiff;
}

// Test
void main() {
  print(plusGrandeDifference([1, 5, 2, 9, 3])); // → 7 (entre 2 et 9)
}
