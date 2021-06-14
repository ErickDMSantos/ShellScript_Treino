
var pegarNome = function(nome, sobrenome) {
    this.nome = nome // o "this" se refere a onde a funcao e aplicada
    this.sobrenome = sobrenome;
    console.log(this)
}
 // Quando uma funcao e usada dentro de um objeto ela passa a ser um metodo desse objeto
// no JS e assim que se acessa as propriedades do objeto, poe o nome do objeto seguido de "." e o nome da propriedade
var pessoa = {
    nome:'Erick Santos',
    sobrenome:'Marcelino',
    idade: 25, 
    getNome: pegarNome
};

var cars = {
    nome: 'Civic',
    marca: 'Honda',
    getNome: pegarNome
}

pessoa.getNome();
cars.getNome();

pegarNome.call(pessoa, 'Erick', 'Santos'); 
// o metodo "call" e usado para fazer o tipo de alteracao que foi feita
// o primeiro paramentro e o contexto onde o this e aplicado, e a partir do segundo parametro
// temos os parametros sendo passados para a funcao para que ela manipule este this, neste caso o 
// objeto pessoa
pegarNome.apply(pessoa, ['Erick', 'Santos']); // mesma coisa que call, a diferenca e que usa array

var getNome = pegarNome.bind(pessoa, 'Erick', 'Santos');
getNome()
