#!/bin/bash
document=$1
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
1) ./Tasca1-1.sh $document;;
2) ./Tasca1-2.sh $document;;
3) ./Tasca1-3.sh $document;; 
esac
