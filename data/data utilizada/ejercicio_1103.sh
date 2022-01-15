echo " Deber 1.10.3 "
echo " Escriba un guión que tome uno de estos archivos y determine el número de filas
(polinizadores) y columnas (plantas). Tenga en cuenta que las columnas están
separadas por espacios y que hay un espacio al final de cada línea"
cd ~
cd Documents/Bioinformatica/CSB/unix/data/Saavedra2013
#se encuentra la carpeta Saavedra2013
echo
echo
echo "numero de filas"
echo

     cat ../Saavedra2013/n1.txt | wc -l
# comando cat para contar, comando wc - L para contar las lineas
echo "numero de columnas"

     head -n1 ../Saavedra2013/n1.txt | tr -d " " | tr -d "\n" | wc -c

#head -n1 se usa para seleccionar la primera fila,  se uso tr -d " " para eliminar los espacios y "\n"  para eliminar los espacios finales,  el comando wc-c para contar los caracteres.

echo numero de filas
echo
echo
cd ~
cd Documents/Bioinformatica/CSB/unix/data/Saavedra2013
for t in ../Saavedra2013/*.txt; do cat $t | wc -l; done
#for se usa para crear una funcion la cual se repite si es que cumple con la restricion inicial, se usa un contador en este caso es el $ cat para imprimir y wc -l para contar las lineas, done se uso para finalizar
echo
echo numero de columnas
echo
echo
for r in ../Saavedra2013/*.txt; do head -n 1 $r | tr -d " " | tr -d "\n" | wc -c; done
# for se usa para crear una funcion la cual se repita si es que cumple con la restricion inicial, se usa un contador $ tr -d para eliminar caracteres de espacio en este caso espacio entre caractere y espacio final, wc -c se usa para contar caracteres, done se uso para finalizar. 
