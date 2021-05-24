#!/bin/bash

#o comando whoami mostra o usuario atual.
echo "Seu nome de usuario e: $(whoami)"

#o comando date mostra  a data e a tempo de uso do PC
echo "Sua data e tempo logado e: $(date)"

#use uptime para ver a hora 
echo "Esta e a hora: $(uptime)"

#pwd mostra onde o script esta executando
echo "Seu script esta sendo executado em: $(pwd)"

#assim atribui um valor a uma variavel
teste=100

#para chamar a variavel e necessario usar o "$" e por o nome da variavel corretamente
echo "Valor da variavel teste e: $teste"

#para mostrar o nome da variavel use \
echo "Este e o nome da variavel: \$teste"

#para atribuir comandos a variaveis use $() <-- por o comando emtre parenteses 
soma=$(expr 50 + 50)
echo "Resultado da soma: $soma"

#n string1: o comprimento de string1 é diferente de 0;
#z string1: o comprimento de string1 é zero;
#string1 = string2: string1 e string2 são idênticas;
#string1 != string2: string1 e string2 são diferentes;
#inteiro1 -eq inteiro2: inteiro1 possui o mesmo valor que inteiro2;
#inteiro1 -ne inteiro2: inteiro1 não possui o mesmo valor que inteiro2;
#inteiro1 -gt inteiro2: inteiro1 é maior que inteiro2;
#inteiro1 -ge inteiro2: inteiro1 é maior ou igual a inteiro2;
#inteiro1 -lt inteiro2: inteiro1 é menor que inteiro2;
#inteiro1 -le inteiro2: inteiro1 é menor ou igual a inteiro2;
#e nome_do_arquivo: verifica se nome_do_arquivo existe;
#d nome_do_arquivo: verifica se nome_do_arquivo é um diretório;
#f nome_do_arquivo: verifica se nome_do_arquivo é um arquivo regular (texto, imagem, programa, docs, planilhas).


#para atribuir um valor a uma variavel atravez de digitacao use read
echo "Escreva aqui o seu maior objetivo: "
  read objetivo;
echo "E esse o seu objetivo, digite sim/nao:"
  read resposta;
#use o if como codicional
if [[ "$resposta" == sim ]]; 
  then
    echo "Se esforce para atingi-lo: $objetivo"
  else 
    echo "Bicho indeciso, tenta de novo"
exit
fi

echo "------------------------------------------------"

echo "Escolha uma das opcoes abaixo: "
  echo "1- Cafe"
    echo "2- Leite"
      echo "3- Cafe com leite"
      echo "4- Cachaca"
        echo "5- Suco de laranja"
read opcao;
#o if em traducao e "E se" ele vai testar se as informacoes que estao dentro dos "[]" sao verdadeiras ou nao
#e a partir dai ele vai executar ou nao, ou seja, pra "executar", ele tem como condicao ser verdadeiro
#para o if ter condicao de falso se usa o "!", exemplo "if!"
if [ $opcao == "1" ];
  then
    echo "Com ou sem acucar: "
    read preferencia;
    echo "Aqui esta seu cafe: $preferencia"
    echo "------------------------------------------------"
#o elif e usado quando e necessario mais de uma condicional
elif [ $opcao == "2" ]; 
  then
    echo "Rescem tirado da vaca"
  
elif [ $opcao == "3" ];
  then
    echo "Precisa amadurecer ainda"
    echo "------------------------------------------------"
elif [ $opcao == "4" ];
  then
    echo "Qual das opcoes de cachaca voce quer?"
      echo "Whisky"
        echo "Pitu"
          echo "Vinho"
            read bebida;

    echo "Aqui esta o seu $bebida!"
    echo "------------------------------------------------"
elif [ $opcao == "5" ]; 
  then 
    echo "Beba, voce e so uma criancinha ainda"

fi

echo "------------------------------------------------"
  echo "Vamos la, o que voce quer para comer? "
    echo "1- Pao de queijo"
      echo "2- Bolacha"
        echo "3- Rosquinha"
          echo "4- Tira gosto"
read opcao2;

#case tem a mesma funcao que o if, porem e mais inchuto com poucos detalhes
#nao sei se da pra fazer isso no if tambem, mas dentro do case podemos definir variaves
#lembre-se, e importante por todos os caracteres corretamente, pois o shell script so funciona desse jeito
#os "()", os espacos os "[]" os ";;"... tudo isso e obrigatorio para poder funcionar
case $opcao2 in
 "1")
    pqueijo=2.5
    echo "O pao de queijo custa: $pqueijo"
  ;;
 "2")
    bolacha=3.85
    echo "Valor da bolacha e: $bolacha"
  ;;
 "3")  
    rosquinha=3.0
    echo "O valor da Rosquinha e: $rosquinha"
  ;; 
 "4")
    echo "Temos os seguintes:"
    echo "1- Calabresa"
    echo "2- Toxicana"
    echo "3- Queijo"
    read tptiragosto;
    case $tptiragosto in
      "1")
      valor1=5.0; 
      echo "Valor da Calabresa: $valor1"
    ;;
      "2")
      valor2=4.5
      echo "Valor da Toxicana e: $valor2"
    ;;
      "3")
      valor3=6.0 
      echo "Valor do Queijo: $valor3"  
    ;;  
    esac
esac 
echo "------------------------------------------------"
#isso e o loop, usado para fazer repeticoes, ele pode ser usado para definir a 
#quantidade de vezes que uma senha pode ser digitada
#irei melhorar esse script e usar o loop para criar uma senha e repetir apenas algumas vezes
#um projeto meu, vou melhorar 
echo "Vamos contar de um ate 10"
for repeticao in $(seq 1 10);
  do
    echo "$repeticao"
done     

#mais um exemplo de loop 
#echo “Testando o loop for”
 #for i in {10..0};
  #do
    #echo “$i”
#done

#Enquanto o loop for é mais ideal para quando sabemos até quanto contar, o loop while 
#é bom para quando não temos essa noção, mas sabemos de uma condição que deverá ser 
#atendida para que o laço termine. Sua sintaxe é:

#neste script o loop repetirar ate atingir o valor atribuido a variavel valor
#ele atribuira de 2 em 2 ate chegar no valor da variavel (ou proximo, caso o numero seja impar)
#obs.: aqui "((i=$i+2))" e importante chamar o nome da variavel que foi denominada com o valor
#constante para que possa adicionar mais numeros, caso contrario o loop continuara a executar o 
#valor constante sem cessar ate voce parar com ctrl+c
echo "Informe qualquer valor menor que 10:"
read valor;
i=10
while [ $i -le $valor ]; 
  do
    echo "$i"
    ((i=$i+2))
done

#FUNCOES
#O uso de funções é imprescindível para separar, organizar e estruturar a lógica de qualquer 
#algoritmo, seja em shell script ou qualquer outra linguagem de programação. Sua sintaxe é 
#muito simples:
#nome_funcao()
#  {
#      AÇÕES
#}

#demorei um pouco para entender essa funcao e configura-la ao meu desejo
#eu vou escrever com alguns detalhes o que cada comando usado ai faz


NN=0

func1() {
    
    echo -e " Esta é a FUNÇãO Nº $NN"

    echo -e "Qual sua idade(digite em numeros): "
      read idade;
    if [ $idade -gt 18 ]; 
      then 
       echo "Entao voce tem $idade anos"  
     else 
       echo "Ainda e menor de idade"
    fi    
}


func2() {
    
    echo -e " Esta é a FUNÇãO Nº $NN"

    echo "O qual o valor de PI?"
      read vpi;
    if [ $vpi == 3.14 ];
      then 
        echo "Parabens, voce acertou"
      else 
        echo "Bicho, vai estudar"
    fi
}

func3() {
    
    echo -e " Esta é a FUNÇãO Nº $NN"

    echo "Me diga ai um numero: "
      read number;
    echo "Multiplicando $number por 5, temos: $(expr $number \* 5)"
}

func4() {
    echo -e " Esta é a FUNÇãO Nº $NN"

    echo "Muito bom, qual seu nome?"
      read nm;
    echo "Bem vindo $nm"
}

func5() {
    echo -e " Esta é a FUNÇãO Nº $NN\n A ULTIMA. . . \n "
    echo "Ate logo $nm"
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