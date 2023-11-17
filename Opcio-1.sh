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

mostrarMenu
read op
case $op in
1) echo Ordenar por titulo;;
2) echo Ordenar por año;;
3) echo Ordenar por valoración;; 
esac
