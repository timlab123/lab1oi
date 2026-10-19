#!/bin/bash

file=$1

new(){
	read -p "Категория расходов: " kat 
	read -p "Сумма расходов: " sum
	read -p "Описание: " op
	date=$(date +%F)
	echo "$date;$kat;$sum;$op" >> "$file"
	echo "Изменения сохранены"
}

show(){
	cat -n "$file"
}

if [ "$2" == "show" ]; then
	show
elif [ "$2" == "new" ]; then
	new
fi
