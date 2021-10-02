function ligar(status){
    let estado = null;
    if(status === false){
        estado = "Ligou o Carrp"
    }else{
        estado = "O carro já está ligado";
    }
    console.log(estado);
}

ligar(true);
ligar(false);