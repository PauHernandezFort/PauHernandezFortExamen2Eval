read -p "pon una ciudad " respuesta
    contador=1000
    contador2=0
    comsumoM=0
    consumoMi=0
while read -r ciudad mes ano consumo; do
     if [ $respuesta = $ciudad ]; then
        if [ $consumo -lt $contador ]; then
        contador=$((consumo))
    fi
    fi
done <consumos.txt
 while read -r ciudad mes ano consumo; do
     if [ $respuesta = $ciudad ]; then
        if [ $consumo -gt $contador2 ]; then
         contador2=$((consumo))
    fi
    fi
done <consumos.txt
comsumoM=$((contador))
consumoMi=$((contador2))
echo $comsumoM
echo $consumoMi