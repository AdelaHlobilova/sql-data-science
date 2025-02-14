# Number Guessing Game

## Project goal

* Use Bash scripting, PostgreSQL, and Git to create a number guessing game that runs in the terminal and saves user information according to the [instructions](https://github.com/freeCodeCamp/learn-number-guessing-game/blob/main/TUTORIAL.md).
* Project made as part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-database).

## Bash script description

The Bash script implements a random number guessing game, where users try to guess a randomly generated number between 1 and 1000. It interacts with a PostgreSQL database to track user statistics, such as total games played and best score. The script ensures user-friendly input handling, including validation for non-integer guesses, and provides real-time feedback on whether the guess is too high or too low. Returning users are greeted with their past game statistics, while new users are welcomed upon their first attempt.

## Database description

* Tables used: Users, Games.
* Relationships built: Users > Games.
* Data provided directly by users.

The number_guess PostgreSQL database stores user information and game statistics. It maintains records of usernames, total games played, and the number of guesses taken to win a game. Each username is unique and limited to 22 characters. The database supports tracking returning users, enabling personalized greetings and performance analysis. Users' progress is stored persistently, and the database can be backed up or restored using PostgreSQL dump commands.

## Relational database diagram
