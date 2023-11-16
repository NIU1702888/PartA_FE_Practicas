#!/bin/bash
document=$1
ordenarvaloracio(){
sort -n -r -t , -k 5 $document | uniq > llista.txt
lin=$(wc -l < llista.txt)
for i in $(seq 1 $(($lin-1)))
do
if [ $i -le $lin ]
then
echo cargando
clear
else
echo listo
fi
title=$(head -$i llista.txt| tail -1| cut -d, -f1)
rating=$(head -$i llista.txt| tail -1| cut -d, -f5)
year=$(head -$i llista.txt| tail -1| cut -d, -f4)
desc=$(head -$i llista.txt| tail -1| cut -d, -f3)
clas=$(head -$i llista.txt| tail -1| cut -d, -f2)
size=$(head -$i llista.txt| tail -1| cut -d, -f6)
echo "*****************************************************************************************************************************" >> output.txt
echo "*Títol:	"$title	>> output.txt
echo "*Any: "$year"	*Nivell de classificació:	"$clas 	>> output.txt
echo "*Descripció:	"$desc 	>> output.txt
echo "*Valoració dels usuaris: "$rating"	*Mida de la mostra:	"$size 	>> output.txt
done

}
echo "************************   HBBQO: El Nostre catàleg de ratings segons els usuaris  es:   ************************************" > output.txt
ordenarvaloracio
more output.txt
