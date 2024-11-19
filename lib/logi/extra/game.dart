import 'dart:io';
import 'dart:math';

void main() {

  // Generate a random 4-digit number
  String secretNumber = generateSecretNumber();
  int attempts = 0;
  print("Welcome to the Cows and Bulls game!");
  print("Try to guess the 4-digit number.");

  while (true) {
    stdout.write("Enter your guess: ");
    String? guess = stdin.readLineSync();

    // Ensure the guess is a valid 4-digit number
    if (guess == null || guess.length != 4 || int.tryParse(guess) == null) {
      print("Invalid input. Please enter a 4-digit number.");
      continue;
    }

    attempts++;
    var result = calculateCowsAndBulls(secretNumber, guess);

    // Check if the guess is correct
    if (result['cows'] == 4) {
      print("Congratulations! You guessed the correct number $secretNumber.");
      print("You made $attempts guesses.");
      break;
    } else {
      print("${result['cows']} Cows, ${result['bulls']} Bulls");
    }
  }
}

// Function to generate a 4-digit secret number with unique digits
String generateSecretNumber() {
  Random random = Random();
  List<int> digits = [];

  while (digits.length < 4) {
    int digit = random.nextInt(10);
    if (!digits.contains(digit)) {
      digits.add(digit);
    }
  }

  return digits.join();
}

// Function to calculate the number of cows and bulls
Map<String, int> calculateCowsAndBulls(String secret, String guess) {
  int cows = 0;
  int bulls = 0;

  // Check each digit for cows and bulls
  for (int i = 0; i < 4; i++) {
    if (guess[i] == secret[i]) {
      cows++;
    } else if (secret.contains(guess[i])) {
      bulls++;
    }
  }

  return {'cows': cows, 'bulls': bulls};
}