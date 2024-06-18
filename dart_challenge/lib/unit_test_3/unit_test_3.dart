import 'dart:math';

bool unitTest3(int number) {
  if (number < 2) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  int sqrtN = sqrt(number).floor();
  for (int i = 3; i <= sqrtN; i += 2) {
    if (number % i == 0) return false;
  }

  return true;
}
