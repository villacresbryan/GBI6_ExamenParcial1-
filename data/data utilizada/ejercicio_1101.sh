

#Ejercicio 1.10.1 Marra and DeEoody 2014
##Para empezar me ubiqué en el directorio usando el siguiente código 


cd ~/Documents/Bioinformatica/CSB/unix/sandbox

##para saber el tamaño del documento que nos pide en el ejercicio
## usé el siguiente código

ls -lh ../data/Marra2014_data.fasta

## ls -lh usamos para enlistar y detallar el tamaño del ejercicio de
## de manera legible. Obteniendo un número 556K
##Después use el siguiente código una salida más compacta
du -h ../data/Marra2014_data.fasta

##Para el tercer literal y para crear la copia del archivo en el directorio
##de sandbox

cp ../data/Marra2014_data.fasta my_file.fasta

##Después para verificar que se copio el archivo imprimimos con "ls"

ls

##Para saber en cuantos contigs se clasifica isogropu00036
## Además, con "grep -c" podemos contar las veces que se necesite las 
#las palabras repetidas en un documento y arroja el resultado 
## en este caso nos arroja 16

grep -c isogroup00036 my_file.fasta

##Para el literal 5, para reemplazar los dos espacios por una coma 
## usamos el comando cat para imprimir el contenido del archivo y el 
## comando "tr" para reemplazar los espacio

cat my_file.fasta | tr s ' ' ',' | head -n 3

##Para realizar el sexto literal se necesita extraer información de
## los archivos y eliminar los que se repiten, usando el siguiente código

grep '>' my_file.fasta | head -n 2

##Para contar los archivos, y extraer la cuarta columna de los archivos 
##usamos el siguiente código

grep '>' my_file.fasta | cut -d ',' -f 4 | head -n 2

##Para saber cuantas lecturas tiene un archivo usamos el siguiente código

grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l

## para el numeral 7, para saber el numero de lecturas que tiene
## el archivo usamos

grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 3

## Ahora para ordenar según el número de lecturas usamos
##pero para dividir según el signo = podemos usar -t '=' y para tomar 
## sólo la columna 2 usamos -k 2 y para ordenar numéricamente  usamos -n

grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n | head -n 5


# para ordenar de manera reversa podemos usar -r 

grep '>' my_file.fasta | cut -d ',' -f 1,3  | sort -t '=' -k 2 -n -r | head -n 1

