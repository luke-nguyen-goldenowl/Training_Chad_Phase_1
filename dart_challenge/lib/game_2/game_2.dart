import 'dart:io';
import 'dart:math';

void game2() {
  bool run = true;
  int randomNumber;
  int count;
  while (run) {
    stdout.write(
        '\nWelcome to Guess the Number Game. \nType \'exit\' to quit the game\n');
    randomNumber = Random().nextInt(100) + 1;
    count = 0;
    while (true) {
      stdout.write('\nPlease choose a number between 1 and 100: ');
      String enterValue;
      try {
        enterValue = stdin.readLineSync() ?? '';
      } catch (e) {
        enterValue = 'exit';
      }

      if (enterValue.toLowerCase() == 'exit') {
        run = false;
        break;
      }
      int number = int.tryParse(enterValue) ?? -1;
      if (number < 1 || number > 100) {
        stdout.write('Invalid value, please enter again\n');
      } else {
        count++;
        if (number > randomNumber) {
          stdout.write('You are higher\n');
        } else if (number < randomNumber) {
          stdout.write('You are lower\n');
        } else {
          stdout.write('\nBINGO! You tried $count times\n');
          int exit;
          while (true) {
            stdout.write('\nDo you want to play again? 1. Yes   0. No\n');
            try {
              exit = int.tryParse(stdin.readLineSync()!) ?? 0;
            } catch (e) {
              exit = 0;
            }
            if (exit == 0 || exit == 1) break;
          }
          if (exit == 0) {
            run = false;
          }
          break;
        }
      }
    }
  }
}
