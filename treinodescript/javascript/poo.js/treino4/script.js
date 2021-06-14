// a natureza dos objetos em JS e dinamica 

var pessoa = {};
pessoa.nome = 'Erick';
pessoa.idade = 25;
pessoa.sexo = 'M';
pessoa.casado = false;

// assim como o 'in' o "hasOwnProperty" tambem confere se a propriedade existe, porem apenas no objeto local
console.log(pessoa.hasOwnProperty('casado'));

// para deletar propriedades use o "delete"
// delete pessoa.nome;
// 'in' verifica a existencia da propriedade dentro do objeto. Cuidado, o in faz o teste em todos os prototipos
// e nao apenas no objeto atual

if ('casado' in pessoa ) { // em js voce pode referenciar uma propriedade de objeto com uma string
    delete pessoa.casado;

}

for (propriedade in pessoa) {
    console.log(propriedade); // nesse loop, vai ficar passando propriedade por propriedade
    console.log(pessoa[propriedade]); // para mostrar os parametros 
}

console.log(pessoa);
var i, size;
var propriedade = Object.keys(pessoa);

for (i=0, size = propriedade.length; i < size; i++){
    console.log(propriedade[i])
    console.log(pessoa[propriedade[i]])   // outra forma de fazer oque foi  feito acima
}
console.log(propriedade)

// ATENCAO, algumas propriedades nao sao enumeraveis, por isso muitas vezes pode dar erros
// use "propertyIsEnumerable" para conferir se sao enumeraveis
console.log(pessoa.propertyIsEnumerable("idade"));
console.log(pessoa.propertyIsEnumerable("length"));