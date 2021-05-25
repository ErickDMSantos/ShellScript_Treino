#!/bin/bash
d=5
c=1
echo "Quantas vezes voce quer converter para dolar?"
read q;
while [ $c -le $q ]; 
    do 
        echo "Qual o valor em R$ ?"
            read r;
        resposta=$(expr $r / $d)
        echo "O valor convertido e $resposta dolares"
        ((c++))
done