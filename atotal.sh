read -p "pon una ciudad " respuesta
    contador=0
  if [ $respuesta = "Barcelona" ]; then
       contador=$((contador + 1 ))
       
    elif [ $respuesta = "Valencia" ]; then
      contador=$((contador+1))

   elif [ $respuesta = "Madird" ]; then
       contador=$((contador + 1))
    fi
     if [ $contador -lt 1 ]; then
        echo "ciudad no encontada porfavor ponga otra"
        ./atotal.sh
     fi
sum=0
while read -r ciudad mes ano consumo; do
        echo $ciudad
     if [ $respuesta = $ciudad ]; then
        sum=$((consumo + sum))
    fi
done <consumos.txt
echo $sum