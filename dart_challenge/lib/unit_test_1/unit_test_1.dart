List<int> unitTest1(int number) {
  if (number < 1) return [];
  if (number == 1) return [1];

  List<int> res = [];
  for (int i = 1; i <= number / 2; i++) {
    if (number % i == 0) res.add(i);
  }
  return [...res, number];
}
