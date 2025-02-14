#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  
  if [[ $1 =~ ^[0-9]+$ ]] # if input is a number
  then
    ELEMENT=$($PSQL "SELECT * FROM elements WHERE atomic_number=$1")

  elif [[ $1 =~ ^[a-zA-Z]{1,2}$ ]] # if input is a symbol
  then
    ELEMENT=$($PSQL "SELECT * FROM elements WHERE symbol='$1'")
    
  else # if input is a name
    ELEMENT=$($PSQL "SELECT * FROM elements WHERE name='$1'")
  fi

  # if element found
  if [[ $ELEMENT ]]
  then

    # split variable ELEMENT using IFS="|" and assign the values to the correct variables
    IFS="|" read ATOMIC_NUMBER SYMBOL NAME <<< "$ELEMENT"

    # get all the properties
    PROPERTIES=$($PSQL "SELECT * FROM properties WHERE atomic_number=$ATOMIC_NUMBER")

    # split variable PROPERTIES using IFS="|" and assign the values to multiple variables
    IFS="|" read ATOMIC_NUMBER ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE_ID <<< "$PROPERTIES"

    # get the type
    TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID")

    # print the requested sentence
    echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."

  else
    echo "I could not find that element in the database."
  fi

fi