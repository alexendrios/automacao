def info_susuario_1(nome, idade, cidade):
    info = "nome:\t{}\nidade:\t{}\nCidade:\t{}".format(nome, idade, cidade)
    return info

def info_susuario_2(nome, idade=0, cidade="Brasília"):
    info = "nome:\t{}\nidade:\t{}\nCidade:\t{}".format(nome, idade, cidade)
    return info

print(info_susuario_1("Alexandre", 39, "Brasilia"))
print(info_susuario_2("Pedro",22))