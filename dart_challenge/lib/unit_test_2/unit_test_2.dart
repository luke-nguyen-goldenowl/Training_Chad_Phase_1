List<int> unitTest2(List<int> a, List<int> b) {
  final Set<int> setA = Set.from(a);
  final Set<int> setB = Set.from(b);

  final Set<int> intersection = {};
  for (int i in setA) {
    for (int j in setB) {
      if (i == j) intersection.add(j);
    }
  }
  return intersection.toList();
}
