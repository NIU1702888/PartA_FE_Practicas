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
mostrar_opcio(){
clear && echo En desenvolupament
}
mostrar_novalida(){
clear && sleep 2 && echo Opcio no valida
}
mostrar_menu
read op
while [[ $op != 1 &&  $op != 2  &&  $op != 3  &&  $op != 4  && $op != 0 ]]
do
mostrar_novalida
mostrar_menu
read op
done
mostrar_opcio
