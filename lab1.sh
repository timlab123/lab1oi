#!/bin/bash

file=$1

if [ -z "$1" ]; then
	echo "Не указано имя файла"
	exit 1
fi

if [ -z "$2" ]; then
	echo "Неправильно указана команда. Команды: new или show"
	exit 1
fi

new(){
	read -p "Категория расходов: " kat 
	read -p "Сумма расходов: " sum
	read -p "Описание: " op
	date=$(date +%F)
	echo "$date;$kat;$sum;$op" >> "$file"
	echo "Изменения сохранены"
}

show(){
	if [ ! -f "$file" ]; then
		echo "Файла не существует"
	else
		cat -n "$file"
	fi
}

if [ "$2" == "show" ]; then
	show
elif [ "$2" == "new" ]; then
	new
else
	echo "Ошибка: введена неизвестная команда"
fi

