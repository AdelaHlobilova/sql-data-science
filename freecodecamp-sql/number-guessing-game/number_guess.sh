#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=games -t --no-align -c"

echo "Enter your username: "
read USERNAME

# generate SECRET_NUMBER
SECRET_NUMBER=$((RANDOM % 1000 + 1))

# get info about the user from the database
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# if the username in the database, display the stats of the user
if [[ $USER_ID ]]
then

  # get GAMES_PLAYED
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")

  # get BEST_GAME guesses (the fewest number of guesses it took that user to win the game)
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id=$USER_ID")

  # display the message
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

else
  # if not in the database, welcome the user 
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  # add the user to the database
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
fi

# print message: Guess the secret number between 1 and 1000:
echo -e "Guess the secret number between 1 and 1000:"

# read the guess from the user
read GUESS
while ! [[ $GUESS =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read GUESS
  ((NUMBER_OF_GUESSES++))
done

NUMBER_OF_GUESSES=1

# the number is not correct
while [[ $GUESS -ne $SECRET_NUMBER ]]
do

  # if previous input was higher than the secret number
  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    # print message
    echo "It's lower than that, guess again:"
    
  else 
    # if the previous guess was lower than the secret number
    echo "It's higher than that, guess again:"
  fi

  # read the guess again
  read GUESS
  ((NUMBER_OF_GUESSES++))
  while ! [[ $GUESS =~ ^[0-9]+$ ]]
  do
    echo "That is not an integer, guess again:"
    read GUESS
    ((NUMBER_OF_GUESSES++))
  done

done

# when the secret number guesses, print message 
echo -e "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

# add the game to the database
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")

