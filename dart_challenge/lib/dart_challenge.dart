import 'dart:io';
import 'package:dart_challenge/exercise_1/exercise_1.dart';
import 'package:dart_challenge/game_3/game_3.dart';
import 'package:dart_challenge/game_4/game_4.dart';
import 'package:dart_challenge/game_2/game_2.dart';
import 'package:dart_challenge/game_1/game_1.dart';
import 'package:dart_challenge/unit_test_1/unit_test_1.dart';
import 'package:dart_challenge/unit_test_2/unit_test_2.dart';
import 'package:dart_challenge/unit_test_3/unit_test_3.dart';
import 'package:dart_challenge/unit_test_4/unit_test_4.dart';

void runMenu() {
  bool run = true;
  while (run) {
    stdout.write('\n\nDART CHALLENGES MENU\n');
    stdout.write('1. Exercise 1\n');
    stdout.write('2. Unit Test 1\n');
    stdout.write('3. Unit Test 2\n');
    stdout.write('4. Unit Test 3\n');
    stdout.write('5. Unit Test 4\n');
    stdout.write('6. Game 1\n');
    stdout.write('7. Game 2\n');
    stdout.write('8. Game 3\n');
    stdout.write('9. Game 4\n');
    stdout.write('0. Exit\n');

    int chooseNumber;
    while (true) {
      stdout.write('\n\nPLEASE ENTER THE NUMBER OF YOUR OPTION: ');

      chooseNumber = int.tryParse(stdin.readLineSync()!) ?? 0;

      if (chooseNumber > 9 || chooseNumber < 0) {
        stdout.write('Please enter again(choose 0 - 9)');
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
        stdout.write('\n\nUnit Test 2\n');
        stdout.write('\nEnter list 1. Type \'exit\' to stop\n');

        List<int> a = [];
        while (true) {
          stdout.write('\nEnter a number: ');
          String input = stdin.readLineSync()!;
          if (input.toLowerCase() == 'exit') {
            break;
          }
          if (int.tryParse(input) == null) {
            stdout.write('Please enter a valid value!\n');
            continue;
          }
          int number = int.tryParse(input) ?? 0;
          a.add(number);
        }

        stdout.write('\nEnter list 2. Type \'exit\' to stop\n');
        List<int> b = [];
        while (true) {
          stdout.write('\nEnter a number: ');
          String input = stdin.readLineSync()!;
          if (input.toLowerCase() == 'exit') {
            break;
          }
          if (int.tryParse(input) == null) {
            stdout.write('Please enter a valid value!\n');
            continue;
          }
          int number = int.tryParse(input) ?? 0;
          b.add(number);
        }

        stdout.write('\nList 1: [${a.join(', ')}]');
        stdout.write('\nList 2: [${b.join(', ')}]');

        List<int> res = unitTest2(a, b);
        stdout.write('\n\nRESULT: ');
        for (int i = 0; i < res.length; i++) {
          stdout.write('${res[i]} ');
        }
        stdout.write('\n');
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
      case 5:
        String password;
        while (true) {
          stdout.write('\n\nUnit Test 4');
          stdout.write('\nEnter the password: ');
          password = stdin.readLineSync() ?? '';
          if (password.isEmpty) {
            stdout.write('Please enter a valid value!');
          } else {
            break;
          }
        }
        stdout.write('\nResult: ${unitTest4(password)}\n');
      case 6:
        game1();
      case 7:
        game2();
      case 8:
        game3();
      case 9:
        game4();
      default:
        stdout.write('Please enter again(choose 0 - 9)');
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
