#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

MAIN_MENU() {
  # 显示服务列表
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")

  echo "$SERVICES" | while IFS="|" read SERVICE_ID SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # 读取服务编号
  echo -e "\nWhich service would you like?"
  read SERVICE_ID_SELECTED

  # 检查服务是否存在
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED;")

  # 不存在就重新显示菜单
  if [[ -z $SERVICE_NAME ]]
  then
    MAIN_MENU
    return
  fi

  # 询问手机号
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  # 根据手机号查客户姓名
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE';")

  # 如果是新客户
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "\nWhat's your name?"
    read CUSTOMER_NAME

    $PSQL "INSERT INTO customers(phone, name)
    VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME');"
  fi

  # 获取 customer_id
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")

  # 询问预约时间
  echo -e "\nWhat time would you like your $SERVICE_NAME?"
  read SERVICE_TIME

  # 插入预约
  INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time)
  VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME');")

  # 成功提示
  if [[ $INSERT_APPOINTMENT_RESULT == "INSERT 0 1" ]]
  then
    echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

MAIN_MENU