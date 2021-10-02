// var x = 10;

// if (x > 20) {
//     status = true;
// } else {
//     status = false;
// }

// console.log(status);

document.getElementById("barman").addEventListener("click", processaBarman);

function processaBarman() {
    var idade = document.querySelector("input[name=idade]").value;
    var mensagem = document.getElementById("mensagem");

    if (idade >= 18) {
        //console.log("Que tal uma cerveja bem gelada!!");
        mensagem.innerHTML = "Que tal uma cerveja bem gelada!!";
    } else {
        //console.log("Que tal um refrigerante");
        mensagem.innerHTML = "Que tal um refrigerante";
    }
}