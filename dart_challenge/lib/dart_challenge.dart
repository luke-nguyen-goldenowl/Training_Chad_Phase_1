import 'dart:io';
import 'package:dart_challenge/exercise_1/exercise_1.dart';
import 'package:dart_challenge/game_2/game_2.dart';
import 'package:dart_challenge/game_1/game_1.dart';
import 'package:dart_challenge/unit_test_1/unit_test_1.dart';
import 'package:dart_challenge/unit_test_3/unit_test_3.dart';

void runMenu() {
  bool run = true;
  while (run) {
    stdout.write('\n\nDART CHALLENGES MENU\n');
    stdout.write('1. Exercise 1\n');
    stdout.write('2. Unit Test 1\n');
    stdout.write('4. Unit Test 3\n');
    stdout.write('6. Game 1\n');
    stdout.write('7. Game 2\n');
    stdout.write('0. Exit\n');

    int chooseNumber;
    while (true) {
      stdout.write('\n\nPLEASE ENTER THE NUMBER OF YOUR OPTION: ');

      chooseNumber = int.tryParse(stdin.readLineSync()!) ?? 0;

      if (chooseNumber > 7 || chooseNumber < 0) {
        stdout.write('Please enter again(choose 0 - 7)');
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
        break;
      case 4:
        int number;
        while (true) {
          stdout.write('\n\nUnit Test 3');
          stdout.write('\nEnter the number: ');
          number = int.tryParse(stdin.readLineSync()!) ?? -1;
          if (number < 0) {
            stdout.write('Please enter a valid value!');
          } else {
            break;
          }
        }
        stdout.write('\nResult: ${unitTest3(number)}\n');
      case 6:
        game1();
      case 7:
        game2();
      default:
        stdout.write('Please enter again(choose 0 - 7)');
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
