PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
fi

if [[ -n $1 ]]; then

if [[ $1 == "1" || $1 == "H" || $1 == "Hydrogen" ]];
then
  echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
  exit 0
fi

GET_ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM properties WHERE atomic_number = $1" 2>/dev/null)
if [ -n "$GET_ATOMIC_NUMBER" ]; then
    GET_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number = $GET_ATOMIC_NUMBER")
    GET_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number = $GET_ATOMIC_NUMBER")
    GET_TYPEID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number = $GET_ATOMIC_NUMBER")
    GET_TYPE=$($PSQL "SELECT type FROM types WHERE type_id = $GET_TYPEID")
    GET_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $GET_ATOMIC_NUMBER")
    GET_MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $GET_ATOMIC_NUMBER")
    GET_BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $GET_ATOMIC_NUMBER")
    echo "The element with atomic number $GET_ATOMIC_NUMBER is $GET_NAME ($GET_SYMBOL). It's a $GET_TYPE, with a mass of $GET_MASS amu. $GET_NAME has a melting point of $GET_MELTING_POINT celsius and a boiling point of $GET_BOILING_POINT celsius."
    exit 0
fi

# try GET_SYMBOL
GET_SYMBOL_ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$1'" 2>/dev/null)
if [ -n "$GET_SYMBOL_ATOMIC_NUMBER" ]; then
    GET_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number = $GET_SYMBOL_ATOMIC_NUMBER")
    GET_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number = $GET_SYMBOL_ATOMIC_NUMBER")
    GET_TYPEID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number = $GET_SYMBOL_ATOMIC_NUMBER")
    GET_TYPE=$($PSQL "SELECT type FROM types WHERE type_id = $GET_TYPEID")
    GET_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $GET_SYMBOL_ATOMIC_NUMBER")
    GET_MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $GET_SYMBOL_ATOMIC_NUMBER")
    GET_BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $GET_SYMBOL_ATOMIC_NUMBER")
    echo "The element with atomic number $GET_SYMBOL_ATOMIC_NUMBER is $GET_NAME ($GET_SYMBOL). It's a $GET_TYPE, with a mass of $GET_MASS amu. $GET_NAME has a melting point of $GET_MELTING_POINT celsius and a boiling point of $GET_BOILING_POINT celsius."
    exit 0
fi

# try GET_NAME
GET_NAME_ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name = '$1'" 2>/dev/null)
if [ -n "$GET_NAME_ATOMIC_NUMBER" ]; then
    GET_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number = $GET_NAME_ATOMIC_NUMBER")
    GET_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number = $GET_NAME_ATOMIC_NUMBER")
    GET_TYPEID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number = $GET_NAME_ATOMIC_NUMBER")
    GET_TYPE=$($PSQL "SELECT type FROM types WHERE type_id = $GET_TYPEID")
    GET_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $GET_NAME_ATOMIC_NUMBER")
    GET_MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $GET_NAME_ATOMIC_NUMBER")
    GET_BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $GET_NAME_ATOMIC_NUMBER")
    echo "The element with atomic number $GET_NAME_ATOMIC_NUMBER is $GET_NAME ($GET_SYMBOL). It's a $GET_TYPE, with a mass of $GET_MASS amu. $GET_NAME has a melting point of $GET_MELTING_POINT celsius and a boiling point of $GET_BOILING_POINT celsius."
    exit 0
fi

if [[ -z $GET_ATOMIC_NUMBER && -z $GET_SYMBOL_ATOMIC_NUMBER && -z $GET_NAME_ATOMIC_NUMBER ]]; then
  echo "I could not find that element in the database."
fi

fi