class Car {

    velocidade = 0;

    constructor(marca, cor, ligado){
        this.marca = marca;
        this.cor = cor;
        this.ligado = ligado;
    }

    acelerar (){
        this.velocidade += 10;
        console.log(myCar.velocidade);
    }

}

const myCar = new Car("Gol", "preto", true);
const mycar2 = new Car("sonata", "preto", false);
console.log(myCar);
console.log(mycar2);
myCar.acelerar();
myCar.acelerar();
myCar.acelerar();