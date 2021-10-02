const car = {
    prince: 2000,
    color: "red",
    numDoors: 4,
};

car.prince = 1999;


if( car.prince < 2000 && car.color === "red" && car.numDoors === 4){
    console.log("Este é seu carro");
}else{
    console.log("Continue procurando");
}