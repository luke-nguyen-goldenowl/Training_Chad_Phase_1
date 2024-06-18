import 'dart:io';
import 'dart:math';

void game4() {
  bool run = true;
  List<String> words = [
    'FLUTTER',
    'PROBLEMS',
    'PROGRAMMING',
    'COMPUTER',
    'ALGORITHM'
  ];
  while (run) {
    String secretWord = words[Random().nextInt(words.length)];
    List<String> guessedLetters = List.filled(secretWord.length, '_');

    stdout
        .write('\nWelcome to Hangman Game. \nType \'exit\' to stop the game\n');
    stdout.write('\nYour word has ${secretWord.length} letters\n');
    while (true) {
      stdout.write('\nPlease guess a letter: ');
      String guess;
      try {
        guess = (stdin.readLineSync() ?? '').trim().toUpperCase();
      } catch (e) {
        guess = '';
      }

      if (guess.toLowerCase() == 'exit') {
        run = false;
        break;
      }

      if (guess.isEmpty || guess.length > 1) {
        stdout.write('Invalid input. Please enter a single letter\n');
        continue;
      }

      if (guessedLetters.contains(guess)) {
        stdout.write('You have already guessed that letter. Try again\n');
        continue;
      }

      bool correctGuess = false;
      for (int i = 0; i < secretWord.length; i++) {
        if (secretWord[i] == guess[0]) {
          guessedLetters[i] = guess;
          correctGuess = true;
        }
      }

      if (correctGuess) {
        stdout.write('Correct guess!\n\n${guessedLetters.join(' ')}\n');
      } else {
        stdout.write('Sorry, that letter is not in the word\n');
      }

      if (!guessedLetters.contains('_')) {
        stdout.write('\nBINGO! You guessed the word: $secretWord\n');
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
