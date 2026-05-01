int nombrePlusFrequent(List<int> liste) {
  Map<int, int> frequences = {};

  for (int nombre in liste) {
    frequences[nombre] = (frequences[nombre] ?? 0) + 1;
  }

  return frequences.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
}

// Test
void main() {
  print(nombrePlusFrequent([1, 3, 2, 3, 5, 3, 1])); // → 3
}
