#!/bin/bash

for ((i=0;i<=3;i++))
do
    array[$i]=$RANDOM
done

# ou pode ser feito desse jeito, nesta a forma e em ordem, a outra e com ordem numeriac invertida
for ((i=0;i<=3;i++))
do
    echo 'array['$i']' = ${array[$i]}
done



declare -A matriz

for ((i=0;i<=3;i++))
do
    for ((j=0;j<=4;j++))
    do
        matriz[$i,$j]=$RANDOM
        echo 'matriz['$i','$j']' = ${matriz[$i,$j]}
    done
    
done


