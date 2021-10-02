Before do |scenario|
  puts "\n\n\n --- Cenário em execução: " + scenario.name
end

After("@logout") do
  find("#sair").click
end

After do |scenario|
  #tira uma print
  file_name = scenario.name.tr(" ", "-").downcase!
  shot = "logs/shots/#{file_name}.png"
  page.save_screenshot(shot)
  embed(shot, "image/png", "Clique aqui para ver o print da tela")
  Capybara.reset!
end
