#!/bin/bash

echo -e "\nBem vindo ao meu script calculadora! \n Faca bom uso!"

adicao() {
    echo " Primeiro numero: "
        read ad1;
            if [[ $ad1 != +(0|1|2|3|4|5|6|7|8|9) ]];then
                adicao
            elif [[ $ad1 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                echo " Segundo numero: "
                    read ad2;
                        if [[ $ad2 != +(0|1|2|3|4|5|6|7|8|9) ]];then
                            adicao
                        elif [[ $ad2 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                            echo -e " Resultado e: $(($ad1+$ad2)) \n====================================="
                            sleep 1
                        fi    
            fi
         

}
subtracao() {
    echo " Primeiro numero: "
        read sub1;
            if [[ $sub1 != +(0|1|2|3|4|5|6|7|8|9) ]];then
              subtracao
            elif [[ $sub1 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                echo " Segundo numero: "
                    read sub2;
                        if [[ $sub2 != +(0|1|2|3|4|5|6|7|8|9) ]];then
                            subtracao
                        elif [[ $sub2 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                            echo -e " Resultado e: $(($sub1-$sub2)) \n====================================="
                            sleep 1
                        fi
            fi
          
}
multiplicacao() {
    echo " Primeiro numero: "
        read mult1;
            if [[ $mult1 != +(0|1|2|3|4|5|6|7|8|9) ]];then
              multiplicacao
            elif [[ $mult1 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                echo " Segundo numero: "
                    read mult2;
                        if [[ $mult2 != +(0|1|2|3|4|5|6|7|8|9) ]];then
                            multiplicacao
                        elif [[ $mult2 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                            echo -e " Resultado e: $(expr $mult1 \* $mult2) \n====================================="
                            sleep 1
                        fi
            fi
       
}
divisao() {
    echo " Primeiro numero: "
        read div1;
            if [[ $div1 != +(0|1|2|3|4|5|6|7|8|9) ]];then
              divisao
            elif [[ $div1 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                echo " Segundo numero: "
                    read div2;
                        if [[ $div2 != +(0|1|2|3|4|5|6|7|8|9) ]];then
                            divisao
                        elif [[ $div2 = +(0|1|2|3|4|5|6|7|8|9) ]];then
                            echo -e " Resultado e: $(expr $div1 / $div2) \n====================================="
                            sleep 1
                        fi
            fi
        
}


Calculo() {
	  echo -en "\n Qual a operacao voce deseja fazer? 
        \n 0- Sair
            \n 1- Adicao
                \n 2- Subtracao
                    \n 3- Multiplicacao
                        \n 4- Divisao"
	                        read -e -n1 RESP
	  if [[ $RESP != +(0|1|2|3|4) ]];then
	    Calculo
	  elif [[ $RESP = +(0) ]];then
        echo "Tudo bem, ate mais!"
        exit
	  elif [[ $RESP = +(1) ]];then
	    adicao
      elif [[ $RESP = +(2) ]];then
        subtracao
      elif [[ $RESP = +(3) ]];then
        multiplicacao
      elif [[ $RESP = +(4) ]];then 
	  divisao
      fi
	    Calculo
}
Calculo 


