#!/bin/bash

until [[ $yn =~ ^[Nn]$ ]]; do
    read -p "Enter First Name: " fname
    read -p "Enter Last Name: " lname
    read -p "Enter Age: " age

    FILE=./excel.csv
    if test ! -f "$FILE"; then
        echo First Name, Last Name, Age > excel.csv
    fi
    echo ${fname}, ${lname}, ${age} >> excel.csv
    echo "Data $fname $lname ($age) was added to excel file"
    read -p "Would you like to add another data (y/n)? " yn
done
echo "Excel File was saved!"