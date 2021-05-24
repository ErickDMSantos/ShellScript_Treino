class Caneta {
    // PROPERTIES:
    constructor(modelo, cor, ponta, carga, tampada, escrever, pintar) {
        this.modelo = modelo;
        this.cor = cor;
        this.ponta = ponta;
        this.carga = carga;
        this.tampada = tampada;
        this.escrever = escrever;
        this.pintar = pintar;
        
    }

    // METHODS:
    charge() {
        if(this.tampada) {
            process.exit(0);     
        } else if(this.carga == 1) {
            console.log("TEM TINTA!!!");
        } else {
            console.log("Aff, Sem tinta!!!");}
    }

    tinta() {
        this.carga = 1;
    }

    tirartampa() {
        if(this.tampada) {
            console.log("Ainda esta tampada");
        } else {
            console.log("TIROU A TAMPA!!!");
        }
    }
    
    tampar() {
        this.tampada = true;
    }
    

    destampar() {
        this.tampada = false;
    }

    digitar() {
    
        if(this.carga == 0) {
            process.exit(0);
        }else if(this.escrever) {
            console.log("ERRO. Nao escreveu!");
        }else {
            console.log("ESCREVEU!!!");}
    }

    escrevendo() {
        this.escrever = false; 
    }

    pinturar() {
        if(this.carga == 0) {
            process.exit(0);
        }else if(this.escrever) {
            console.log("ERRO. Nao pintou!");
        }else {
            console.log("PINTOU!!!");}
    }

    pintando() {
        this.pintar = false;
    }

    


}

module.exports = Caneta;