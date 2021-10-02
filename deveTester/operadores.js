//Operadores

//igual
//Restorna um booleano ao analizar as setenças

var va1 = parseInt(prompt("Informe um valor para variável 1?"));
var va2 = parseInt(prompt("Informe um valor para variável 2?"));

resultado = va1 == va2;
console.log("Os valores: " + va1 + " é igual a " + va2 + " : " + resultado);

// Maior
resultado = va1 > va2;
console.log("Os valores: " + va1 + " é maior a " + va2 + " : " + resultado);

//Menor
resultado = va1 < va2;
console.log("Os valores: " + va1 + " é menor  " + va2 + ": " + resultado);

// Maior igual
resultado = va1 >= va2;
console.log("Os valores: " + va1 + " é maior ou igual a " + va2 + " : " + resultado);

//Menor igual
resultado = va1 <= va2;
console.log("Os valores: " + va1 + " é menor ou igual a " + va2 + " : " + resultado);

//Diferente
resultado = va1 != va2;
console.log("Os valores: " + va1 + " é diferente a " + va2 + " : " + resultado);