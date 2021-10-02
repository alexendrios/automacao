Before do |scenario|
  @@reg = ""
  puts "\n\n\n --- Cenário em execução: " + scenario.name
end

After do |scenario|
  @log = Log.new

  #tira uma print
  file_name = scenario.name.tr(" ", "-").downcase!
  shot = "logs/shots/#{file_name}.png"
  page.save_screenshot(shot)
  embed(shot, "image/png", "Clique aqui para ver o print da tela")
  Capybara.reset!
  @log.log_criar_arquivo_txt
  puts "Esta janela será fechada após 20 segundos"
  sleep 20
end
