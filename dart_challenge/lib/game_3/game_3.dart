import 'dart:io';
import 'dart:math';

bool isValidGuess(String guess) {
  if (int.tryParse(guess) == null ||
      guess.length != 4 ||
      guess.startsWith('0')) {
    return false;
  }
  return true;
}

int countCows(String secretNumber, String guess) {
  int cows = 0;
  for (int i = 0; i < 4; i++) {
    if (secretNumber[i] == guess[i]) {
      cows++;
    }
  }
  return cows;
}

int countBulls(String secretNumber, String guess) {
  int bulls = 0;
  List<String> secretDigits = secretNumber.split('');
  List<String> guessDigits = guess.split('');

  for (int i = 0; i < 4; i++) {
    if (guessDigits.contains(secretDigits[i])) {
      bulls++;
      guessDigits.remove(secretDigits[i]);
    }
  }
  return bulls;
}

void game3() {
  bool run = true;
  String randomNumber;

  while (run) {
    stdout.write(
        '\nWelcome to Cows and Bulls Game. \nType \'exit\' to stop the game\n');
    int attempts = 0, cows = 0, bulls = 0;

    randomNumber = (Random().nextInt(9000) + 1000).toString();

    while (cows != 4) {
      stdout.write('\nPlease choose a four digit number: ');
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
      if (isValidGuess(enterValue)) {
        attempts++;
        cows = countCows(randomNumber, enterValue);
        bulls = countBulls(randomNumber, enterValue) - cows;
        stdout.write('\nAttempts: $attempts \nCows: $cows, Bulls: $bulls\n');
        if (cows == 4) {
          stdout.write(
              '\nBINGO! You tried $attempts times to guest $randomNumber\n');
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
      } else {
        stdout.write('Incorrect number. Make sure to give 4 digit number\n');
      }
    }
  }
}
