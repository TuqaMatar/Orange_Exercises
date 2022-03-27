import 'dart:math';
import 'dart:io';


void main () {
  Random randomNumber = new Random();
  bool gameNotFinished = true ;
  int? guess = 0 ;
  var chosenNumber = randomNumber.nextInt(1000);
  var numberOfGuesses = 1;
  
  print('Guess the Number!');

  while(gameNotFinished){
    guess = int.parse(stdin.readLineSync()!);
    if(guess==chosenNumber){
      print('You Found It !');
      gameNotFinished = false ;
    }else{
      if(guess>chosenNumber){
        print('Number too Big , Try Again');
        }
        else {
          print('Number too Small , Try Again');
        }
      numberOfGuesses++;    
    }
  }
  print('You Guessed the Number in ${numberOfGuesses} guesses');
}