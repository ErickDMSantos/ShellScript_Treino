#!/bin/bash
s=0
cont=1
maior=0
loop () {
        while [ $cont -le 5 ];
            do
                echo "Digite o $cont o. valor: "
                    read n;
             if [[ $n != +(1|2|3|4|5|6|7|8|9) ]]; 
                    then
                     echo "Erro"  
                         loop                 
             fi
             ((s=$s+$n)) 
             ((cont++)) 
         
        done    
        echo "A soma de todos os valores e $s"
}
loop

# i=0

# while [ $i -lt 5 ]
# do
#   echo "Number: $i"
#   ((i++))
#   if [[ "$i" == '2' ]]; then
#     break
#   fi
# done