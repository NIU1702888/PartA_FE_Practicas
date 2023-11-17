#!/bin/bash
document=$1
mostrarMenu(){
echo ------------------------------------------
echo Base de dades del catàleg HBBQO
echo ------------------------------------------
echo 1. Llistats de les pel·lícules del catàleg.
echo 2. Cerca d\'una pel·lícula del catàleg.
echo 3. Joc de preguntes sobre les pel·lícules.
echo 4. Gestió de la base de dades de les pel·lícules
echo 0. Sortir.
echo Introduce la opción:
}
enDesenvolupament(){
clear && echo En desenvolupament && read something && clear
}
opcioNoValida(){
echo Opcio no valida && sleep 2 && clear
}
mostrarMenu
read op
while [[ $op != 1 &&  $op != 2  &&  $op != 3  &&  $op != 4  && $op != 0 ]]
do
opcioNoValida
mostrarMenu
read op
done
if [[ $op = 0 ]]
then
echo Agraim la seva visita a HBBQO
elif [[ $op = 1 ]]
then
./Opcio-1.sh $document
else
enDesenvolupament
fi
