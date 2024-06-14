import 'dart:io';
import 'package:dart_challenge/exercise_1/exercise_1.dart';

void runMenu() {
  bool run = true;
  while (run) {
    stdout.write('\n\nDART CHALLENGES MENU\n');
    stdout.write('1. Exercise 1\n');
    stdout.write('0. Exit\n');

    int chooseNumber;
    while (true) {
      stdout.write('\n\nPLEASE ENTER THE NUMBER OF YOUR OPTION: ');
      chooseNumber = int.parse(stdin.readLineSync()!);
      if (chooseNumber > 1 || chooseNumber < 0) {
        stdout.write('Please enter again(choose 0 - 1)');
      } else {
        break;
      }
    }
    switch (chooseNumber) {
      case 0:
        run = false;
        stdout.write('Exit');
        break;
      case 1:
        exercise1();
        break;
      default:
        stdout.write('Please enter again(choose 0 - 1)');
    }
    if (run) {
      int exit;
      while (true) {
        stdout.write('\nDo you want to continue? 1. Yes   0. No\n');
        exit = int.parse(stdin.readLineSync()!);
        if (exit == 0 || exit == 1) break;
      }
      if (exit == 0) break;
    }
  }
}
