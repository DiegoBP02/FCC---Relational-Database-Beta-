#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~ MY SALON ~~~~\n"
echo -e "Welcome to My Salon, how can i help you?\n"


MAIN_MENU(){
if [[ $1 ]]
then
    echo -e "\n$1"
fi
# show available services
SERVICES=$($PSQL "SELECT service_id, name FROM services")
# if no services available
if [[ -z $SERVICES ]]
then
  # send to main menu
  MAIN_MENU "Sorry, we don't havy any services available"
  else
    # display available services formatted
    echo "$SERVICES" | while read SERVICE_ID BAR NAME
    do
      echo "$SERVICE_ID) $NAME"
    done
    # ask the customer to choose a service
    read SERVICE_ID_SELECTED
    # if it's not a number
    if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
    then
      # send to main menu
      MAIN_MENU "Please provide a number!"
    else
    # check if service exists
    CHECK_SERVICE=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")
    # if it doesn't exist
    if [[ -z $CHECK_SERVICE ]]
    then
    # send to main menu
      MAIN_MENU "Please provide a valid choice number"
    else
      # get phone number
      echo -e "\n What's your phone number?"
      read CUSTOMER_PHONE

      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
      # if customer doesn't exists
      if [[ -z $CUSTOMER_NAME ]]
      then
        # get new customer
        echo -e "\nWhat's your name?"
        read CUSTOMER_NAME
        # insert new customer
        INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
      fi
      # get customer id
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
      # get service time
      echo -e "\nWhat would be the best time?"
      read SERVICE_TIME

      # insert time in appointments
      INSERT_TIME=$($PSQL "INSERT INTO appointments(service_id, customer_id, time) VALUES($SERVICE_ID_SELECTED ,$CUSTOMER_ID, '$SERVICE_TIME')")

      # get info to format tje message
      # get service name
      GET_SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
      # get time from appointments
      GET_TIME=$($PSQL "SELECT time FROM appointments WHERE customer_id = $CUSTOMER_ID")
      # get customer name
      GET_CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE customer_id = $CUSTOMER_ID")
      # output formatted message
      echo -e "\nI have put you down for a$GET_SERVICE_NAME at$GET_TIME,$GET_CUSTOMER_NAME."
    fi
  fi
fi
}

MAIN_MENU