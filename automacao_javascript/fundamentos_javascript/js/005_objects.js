const cokie = {
    name: "Chocolate chip",
    isGluten: false,
    prince: 5.50,
    "+Yummm": true,
};



console.log(cokie);
console.log(cokie.name);
cokie.name = "Chip chocolate"
console.log(cokie.name);
console.log(cokie);

cokie.isGluten = true;
cokie["+Yummm"] = false;
console.log(cokie);