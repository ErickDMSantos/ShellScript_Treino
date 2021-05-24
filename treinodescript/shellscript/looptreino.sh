echo "Informe qualquer valor menor que 10:"
read valor;
e=10
while [ $e -le $valor ]; 
  do
    echo "$e"
    ((e=$e+2))
done