// TIPOS PRIMITIVOS

console.log('COMECANDO'); 

var nome = 'Erick' //se nao definir o nome, no console do navegador vai mostrar undefined, pois nao foi definido
    console.log(nome)
var idade = 25;
    console.log(idade, 'Anos'); //o typeof vai mostrar o tipo de variavel
    console.log(idade.toFixed(2))
var trabalha = null;
    console.log(trabalha === null); // o "===" faz uma comparacao do valor e do tipo
    console.log(typeof trabalha)
var existe = true; 
    console.log(existe === true); 
var cidade = undefined;
    console.log(cidade)

    // em um teste logico todos os tipos de dados retornam true, exceto os tipos null e undefined
// exemplos
// Nesse teste logico estou usando o "!!" que significa negacao
console.log(!!nome); //true
console.log(!!idade);//true
console.log(!!trabalha); //false tipo null
console.log(!!existe);//true
console.log(!!cidade);//false tipo undefined

var primeiroChar = nome.charAt(0);
    console.log(primeiroChar);
var nomeMaiusculo = nome.toUpperCase();
    console.log(nomeMaiusculo);
    
// TIPOS DE REFERENCIA

var pessoa = new Object(); // o new e um constructor
    console.log(typeof pessoa);

var pessoa2 = {'nome':'Erick',
               'idade':21, 
               'sexo':'M'
};

var mostraNome = new Function("console.log('Erick')");
mostraNome();

var carro = new Array('Gol', 'Uno', 'Corolla');
    console.log(carro);

var carros = ['Gol', 'Uno', 'Corolla']
    console.log(carros);

function mostraIdade(){ // forma literal de criar uma funcao
    console.log('Idade e igual a ' +25); // "+" e para concatenar 
}
mostraIdade()

// INDENTIFICANDO TIPO DE REFERENCIAS (array, function, object e instancy off)

function moreName(){ 
    return 'Erick';
}

var teste = (typeof moreName);

if (teste === 'function') {
    var receiveName = moreName();
} else {
    console.log('Nao e uma funcao');
}
console.log(receiveName);

// 

function showName() {
    return 'Joao';
}
// o instanceof vai testar o tipo de constructor(ou seja, o tipo de referencia)
if (showName instanceof Function) {
    var name = showName();
}
console.log(name)
// 
var auto = new Object('Civic', 'Hb20', 'Celta');

var cars = ['Civic', 'Hb20', 'Celta']
if (cars instanceof Array) {
    console.log(cars)
}
if (auto instanceof Array){
    console.log(true)
} else {
    console.log(false)
    console.log(typeof auto)
}
if (Array.isArray(cars)){
    console.log(cars);
}



