function sum(a, b){
    return a + b;
}

function product(a,b){
    return a * b;
}

//funções anônimas
setTimeout(function(){
    console.log("Time's up!");
}, 1000);

//funções de seta
setTimeout(() => console.log("Time's up!"), 1000);

console.log(sum(10, 20));
console.log(sum(5, 5));

const valueProduct = product(15, 2);
console.log(valueProduct);