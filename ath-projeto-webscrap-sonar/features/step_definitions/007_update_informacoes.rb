Quando("ao analizar os dados no sonar") do
  projetos_extracao = @coleta.listar_build_sonar_extracao @arquivo
  #projetos_sonar = @coleta.listar_buid_sonar @lista_projetos_sonar.uniq
  #p projetos_sonar
  p projetos_extracao
  #@coleta.veraoAtual projetos_extracao, projetos_sonar
end
  
Então("realizo a atualização dos dados") do
    pending # Write code here that turns the phrase above into concrete actions
end