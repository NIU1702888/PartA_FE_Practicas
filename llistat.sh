#!/bin/bash
$1
mostrarMenu(){
echo ------------------------------------------
echo Llistats de les pel·licles del catàleg.
echo ------------------------------------------
echo 1-1 Mostrar el catàleg alfabètic.
echo 1-2 Mostrar el catàleg cronològic.
echo 1-3 Mostrar el catàleg per valoració.
echo 0. Tornar al menu anterior. 
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
else
enDesenvolupament
fi
