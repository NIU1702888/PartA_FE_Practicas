#!/bin/bash
$1
mostrar_menu(){
echo 1. Llistats de les pel·lícules del catàleg.
echo 2. Cerca d\'una pel·lícula del catàleg.
echo 3. Joc de preguntes sobre les pel·lícules.
echo 4. Gestió de la base de dades de les pel·lícules
echo 0. Sortir.
echo Introduce la opción:
}
read op
while [[ $op < 0 ] && [ $op > 5 ]]
do
clear
sleep 2 &
mostrar_menu
	echo 1. Llistats de les pel·lícules del catàleg.
	echo 2. Cerca d\'una pel·lícula del catàleg.
	echo 3. Joc de preguntes sobre les pel·lícules.
	echo 4. Gestió de la base de dades de les pel·lícules
	echo 0. Sortir.
	echo Introduce la opción:
	read op
done
if [[ $op == 0 ]]
then
	exit 1
elif [[ $op > 0 ] && [ $op < 5 ]]
else
	clear
	echo En desenvolupament
fi
