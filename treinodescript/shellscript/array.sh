#!/bin/bash

meu_array=(1 2 3 4 5)

echo "Escolha qual o espaco do array voce quer usar de 0 a 4 :"
read n;
while [ $n -le 4 ]; 
    do 
        echo "Qual valor quer adicionar ao espaco $n do array? "
        read v;
        meu_array[$n]=${v}
        echo "${meu_array[$n]}"
        ((n++))

done

# outro_array[3]="teste"
# echo "${outro_array[@]}"
# a saida e "teste"




