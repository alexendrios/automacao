class PorteArmaPage < PageHelper
  element :nr_porte_input, '#formPorteArma\:numeroPorte'
  element :btn_pesquisar_porte, '#formPorteArma\:btnPesquisarPorteArma'
  element :btn_detalhar_porte, 'a[name*="buttonDetalharPorte"]'

  def acessar_consulta_porte
    acessar_home
    menu_consultar_porte_arma
  end

  def preencher_parametros_para_consulta_de_porte
    @porte = recuperar_dados("features/arquivos/massa_teste/numero_porte.txt")
    nr_porte_input.click.set(@porte[0].to_s)
    btn_pesquisar_porte.click
  end
end
