var pessoa = {
        nome: 'Erick',
        _idade: 25,
        sexo: 'M',
        casado: false,
        state:'pristine',
        get idade() {
            this.state = 'dirty';
            return this._idade;
        },
        set idade(value) {
            this._idade = value;
        }
};

Object.defineProperty(pessoa, 'idade', {
    enumerable: false,
});

for ( propriedade in pessoa ) {
    console.log (propriedade);
}