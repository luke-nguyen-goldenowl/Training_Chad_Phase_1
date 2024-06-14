import 'dart:io';

void exercise1() {
  int size;
  while (true) {
    stdout.write('\n\nExercise 1');
    stdout.write('\nEnter the size of the square: ');
    size = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (size < 1) {
      stdout.write('Please enter a valid value!');
    } else {
      break;
    }
  }

  stdout.write('\nRESULT:\n');

  for (int i = 0; i <= size; i++) {
    for (int j = 0; j <= 2 * size; j++) {
      if (j < size) {
        stdout.write(' ---');
      } else {
        if (j == size) stdout.write('\n');
        if (i != size) stdout.write('|   ');
      }
    }
    if (i != size) stdout.write('\n');
  }
}
