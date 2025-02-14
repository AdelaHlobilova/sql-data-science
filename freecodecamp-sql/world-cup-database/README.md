#  World Cup Database

## Project goal

* Create a Bash script that enters information from World Cup games into PostgreSQL, then query the database for useful statistics. Description given in the [instructions](https://github.com/freeCodeCamp/learn-world-cup-database/blob/main/TUTORIAL.md).
* Project made as part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-database).

## Bash script description

The scripts automate the creation, population, and querying of a PostgreSQL database containing World Cup match data from the final three rounds since 2014. 

* The `insert_data.sh` script extracts data from `games.csv` and inserts it into the database, ensuring efficient data handling by avoiding duplicate team entries.
* The `queries.sh` script contains SQL queries that retrieve insights from the database, producing output that matches the expected results.

## Database description

The database stores structured data about World Cup matches, including teams, match results, and tournament rounds. It consists of two main tables:
* `teams` – Stores team names with a unique `team_id`.
* `games` – Stores game details, linking teams using foreign keys (`winner_id`, `opponent_id`) and tracking match results (`winner_goals`, `opponent_goals`).

All columns are non-nullable, ensuring data integrity. The database is designed for efficient querying and can be backed up or restored using PostgreSQL commands. 

## Relational database diagram
![database](https://github.com/AdelaHlobilova/WorldcupDatabase/blob/main/drawSQL-world-cup-db.png)
