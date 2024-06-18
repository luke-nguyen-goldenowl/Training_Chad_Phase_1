import 'dart:io';
import 'dart:math';

void game1() {
  stdout.write(
      '\nWelcome to Rock, Paper, Scissors. \nType \'exit\' to stop the game');

  Random random = Random();
  int score = 0;
  while (true) {
    stdout.write('\n\nPlease choose Rock, Paper or Scissors: ');
    String choose;
    try {
      choose = stdin.readLineSync() ?? '';
    } catch (e) {
      choose = 'exit';
    }
    // R < P < S < R
    int res = random.nextInt(3) + 1;
    if (choose.toLowerCase() == 'rock') {
      if (res == 1) {
        stdout.write('Tie');
      } else if (res == 2) {
        stdout.write('You lose');
      } else {
        stdout.write('You win');
        score++;
      }
    } else if (choose.toLowerCase() == 'paper') {
      if (res == 1) {
        stdout.write('You win');
        score++;
      } else if (res == 2) {
        stdout.write('Tie');
      } else {
        stdout.write('You lose');
      }
    } else if (choose.toLowerCase() == 'scissors') {
      if (res == 1) {
        stdout.write('You lose');
      } else if (res == 2) {
        stdout.write('You win');
        score++;
      } else {
        stdout.write('Tie');
      }
    } else if (choose.toLowerCase() == 'exit') {
      stdout.write('\nYOUR SCORE: $score \n');
      break;
    } else {
      stdout.write('Invalid answer, please try again');
    }
  }
}
