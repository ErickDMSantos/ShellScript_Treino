#!/bin/bash

array2=('a' 'b' 'c' 'd')
for ((I=0;I<5;I++)); 
    do 
        echo "${I} -> $( test ${array2[${I}]} \
        && echo "Existe" )"; 

done
# o "#" e usado para ver a quantidade de elementos que o array tem 
echo "${#array2[@]}"
# o "!" e para mostrar a numeracao dos espacos que o vetor possui
echo "${!array2[@]}"
# o ":" e usado para mostrar determinado elemento dele a partir do numero digitado
echo "${array2[@]:0}"
# ou a partir de um numero a outro
echo "${array2[@]:0:2}"

