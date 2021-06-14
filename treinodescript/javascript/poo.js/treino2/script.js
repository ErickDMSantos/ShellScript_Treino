// Funcoes, declaracoes vs instrucoes

// function mostraNome(){
//     console.log('Erick declaracao')
// }
// mostraNome();

var mostrarNome = function(nome, sobreNome){       // esta e uma expressao de uma funcao
    var qtd = arguments.length;
    var nomeCompleto = '';
    console.log(arguments.length)
    while (qtd > 0) {
        nomeCompleto += ' ' + arguments[qtd - 1]
        qtd--;
    }
    
    console.log(nomeCompleto)
    
    // return nome;
    // return arguments.length mostra a quantidade de argumentos declarados
    // return arguments[0] e uma das formas de fazer isso, quando declaramos um parametro dentro da funcao desta formma
    //e como se fosse um array implicito, por isso pode ser usado o comando arguments[]
}
mostrarNome(); // se executar essa expressao antes da declaracao dela da erro, pois e uma expresao e nao uma funcao real

var nome = mostrarNome('Erick', 'Santos', 'Devops');
// console.log(nome)
