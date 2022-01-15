
cd ~
cd Documents/Bioinformatica/CSB/unix/data/Saavedra2013
cat ../Saavedra2013/n2.txt | wc -l
head -n1 ../saavedra2013/n2.txt | tr -d " " | tr -d "\n" | wc -c 
echo numero de filas y columnas de todos los archivos que terminan el .txt
for a in ../saavedra2013/*.txt; do  cat $a | wc -l; done
for b in ../saavedra2013/*.txt; do   head -n1 $b | tr -d " " | tr -d "\n" | wc -c; done

 
