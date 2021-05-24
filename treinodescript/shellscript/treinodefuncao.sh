#!/bin/bash
NN=0

func1() {
echo -e " Esta é a FUNÇãO Nº $NN"
}

func2() {
echo -e " Esta é a FUNÇãO Nº $NN"
}

func3() {
echo -e " Esta é a FUNÇãO Nº $NN"
}

func4() {
echo -e " Esta é a FUNÇãO Nº $NN"
}

func5() {
echo -e " Esta é a FUNÇãO Nº $NN\n A ULTIMA. . . \n "
exit
}

PERGUNTA() {
	echo -en "\n Deseja continuar?"
	read -p " [S/N]: " -e -n1 RESP
	if [[ $RESP != +(s|S|n|N) ]];then
	PERGUNTA
	elif [[ $RESP = +(s|S) ]];then
	let NN++
	func${NN}
	elif [[ $RESP = +(N|n) ]];then
	echo -e "\n Finalizado pelo Usuário\n"
	exit
	fi
	PERGUNTA
}
PERGUNTA 