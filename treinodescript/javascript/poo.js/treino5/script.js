// Porpriedades de objetos

// as propriedades de dados armazenam um valor

var pessoa = {
    nome: 'Erick',
    _idade: 25,
    sexo: 'M',
    casado: false, 
    state: 'pristine',
    // propriedades de acesso 
    get idade() {  // isso e uma propriedade de acesso, usada para modificar propriedades de dados, elas nao guardam valores
        this.state = 'dirty'; // ^^^^
        return this._idade; // o "this" faz uma referencia e o "_" faz o acesso 
    },
    set idade(value) {  // "set" e uma propriedade de modificacao, ela exige um parametro por isso dar erro se nao passar
        this._idade = 21;
    }
};
// pessoa.idade = 21;
console.log(pessoa.idade); // veja bem, idade e o nome da propriedade de acesso,
                           // a propriedade com o valor da idade e _idade, veja a linha 7 e a 1
console.log(pessoa.state);


//pessoa._idade = 21;
//console.log(pessoa._idade);  destas duas maneiras estaria usando respectivamente um "set" e um "get" implicito
// ou seja, iria conseguir acessar e tambem modificar o valor da propriedades 
// calro, depende da necessecidade do objeto






