import 'dart:io';
import 'package:dart_challenge/exercise_1/exercise_1.dart';
import 'package:dart_challenge/unit_test_1/unit_test_1.dart';
import 'package:dart_challenge/unit_test_2/unit_test_2.dart';

void runMenu() {
  bool run = true;
  while (run) {
    stdout.write('\n\nDART CHALLENGES MENU\n');
    stdout.write('1. Exercise 1\n');
    stdout.write('2. Unit Test 1\n');
    stdout.write('3. Unit Test 2\n');
    stdout.write('0. Exit\n');

    int chooseNumber;
    while (true) {
      stdout.write('\n\nPLEASE ENTER THE NUMBER OF YOUR OPTION: ');

      chooseNumber = int.tryParse(stdin.readLineSync()!) ?? 0;

      if (chooseNumber > 3 || chooseNumber < 0) {
        stdout.write('Please enter again(choose 0 - 3)');
      } else {
        break;
      }
    }
    switch (chooseNumber) {
      case 0:
        run = false;
        stdout.write('Exit\n');
        break;
      case 1:
        exercise1();
        break;
      case 2:
        int number;
        while (true) {
          stdout.write('\n\nUnit Test 1');
          stdout.write('\nEnter the number: ');
          number = int.tryParse(stdin.readLineSync()!) ?? -1;
          if (number < 0) {
            stdout.write('Please enter a valid value!');
          } else {
            break;
          }
        }
        List<int> res = unitTest1(number);
        stdout.write('\nResult: ');
        for (int i = 0; i < res.length; i++) {
          stdout.write('${res[i]} ');
        }
        stdout.write('\n');
      case 3:
        List<int> a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
        List<int> b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];

        List<int> res = unitTest2(a, b);
        stdout.write('Result: ');
        for (int i = 0; i < res.length; i++) {
          stdout.write('${res[i]} ');
        }
        stdout.write('\n');
      default:
        stdout.write('Please enter again(choose 0 - 3)');
    }
    if (run) {
      int exit;
      while (true) {
        stdout.write('\nDo you want to continue? 1. Yes   0. No\n');
        exit = int.tryParse(stdin.readLineSync()!) ?? 0;
        if (exit == 0 || exit == 1) break;
      }
      if (exit == 0) break;
    }
  }
}
