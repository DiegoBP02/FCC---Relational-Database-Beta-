#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

MAIN(){
    echo "Enter your username:"
    read USERNAME

    CHECK_USER=$($PSQL "SELECT id FROM users WHERE username = '$USERNAME'")

    if [[ $CHECK_USER ]]; then
      GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id = $CHECK_USER")
      BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE user_id = $CHECK_USER")
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    else 
      $PSQL "INSERT INTO users(username) VALUES('$USERNAME')"
      CHECK_USER=$($PSQL "SELECT id FROM users WHERE username = '$USERNAME'")
      echo "Welcome, $USERNAME! It looks like this is your first time here."
    fi

  MENU
}

MENU(){
  RANDOM_NUMBER=$((1 + $RANDOM % 1000))

  TRIES=0;
  GUESSED=0;

  echo "Guess the secret number between 1 and 1000:"
  
  while [[ $GUESSED = 0 ]]; do
  read GUESS_NUMBER

    if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      elif [[ $RANDOM_NUMBER = $GUESS_NUMBER ]]; then
        TRIES=$(($TRIES + 1))
        echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"

        $PSQL "INSERT INTO games(user_id, tries) VALUES($CHECK_USER, $TRIES)"

        GUESSED=1;
      elif [[ $RANDOM_NUMBER -gt $GUESS_NUMBER ]]; then
        TRIES=$(($TRIES + 1))
        echo "It's higher than that, guess again:"
      else
        TRIES=$(($TRIES + 1))
        echo "It's lower than that, guess again:"
    fi
  done
}

MAIN