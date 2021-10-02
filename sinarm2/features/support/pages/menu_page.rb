class MenuPage < SitePrism::Page
  element :menu_arma_de_fogo, "#formMenuArmaFogo"
  element :incluir_arma_de_fogo, :xpath, '//span[text()="Incluir Arma"]'
  element :incluir_arma_por_revendedor, '#formMenuArmaFogo\:incluirPorRevendedor\:icon'
  element :incluir_arma_por_proprietario, '#formMenuArmaFogo\:incluirPorProprietario\:icon'
  element :incluir_arma_por_ocorrencia, '#formMenuArmaFogo\:incluirPorOcorrencia\:icon'
  element :consultar_arma_fogo, '#formMenuArmaFogo\:controlarArmaFogo\:icon'
  element :porte_arma_de_fogo, :xpath, '//span[text()="Porte"]'
  element :consultar_porte_arma, '#formMenuArmaFogo\:pesquisarPorteArma\:anchor'
  element :incluir_porte, :xpath, "/html/body/table/tbody/tr/td[3]/form/div/div[2]/div[2]/div/div[2]/span[2]"
  element :incluir_porte_funcional, '#formMenuArmaFogo\:manterPorteFuncional\:anchor'

  element :menu_pessoa_fisica, "#formMenuPessoaFisica"
  element :consultar_pessoa_fisica, '#formMenuPessoaFisica\:controlarPF\:anchor'
  element :incluir_pessoa_fisica, '#formMenuPessoaFisica\:incluirPessoaFisica\:anchor'

  element :menu_guia_transito, :xpath, '//span[text()="Guia de Trânsito"]'
  element :consultar_guia_transito, '#formMenuArmaFogo\:controlarGuiaTransito\:anchor'
  element :menu_confeccionar_registro_porte, '#formMenuArmaFogo\:confeccionarPorteRegistro\:anchor'

  element :menu_pj, 'div[id*="PessoaJuridica"].dr-menu-label'
  element :consulta_PJ, '#formMenuPessoaJuridica\:pesquisarPessoaJuridica\:icon'
  element :incluir_PJ, '#formMenuPessoaJuridica\:incluirPessoaJuridica\:anchor'

  element :menu_usuario, 'div[id*="formMenuUsuario"][class*="dr-menu-label"]'
  element :manter_grupo_usuario, '#formMenuUsuario\:grupoUser\:anchor'

  def menu_processos
    click_link("Procesos")
  end

  def menu_PJ
    menu_pj.hover
  end

  def consultar_PJ
    menu_pj.hover
    consulta_PJ.click
  end
end
