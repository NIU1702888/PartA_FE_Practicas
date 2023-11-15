#!/bin/bash
document=$1
echo $document
sort_by_name(){
for LINEA in `cat $document ` #LINEA guarda el resultado del fichero datos.txt
do
    NOMBRE=`echo $LINEA | cut -d, -f1` #Extrae nombr
 
    echo "$NOMBRE" #Muestra resultado.
done
}
sort_by_name
