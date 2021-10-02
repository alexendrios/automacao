After('@logout') do
        click_link 'link-header-nivelRelacionamento'
end

After('@logout_operacoes') do
   find('.col50 > img:nth-child(1)').click
   click_button 'link-header-nivelRelacionamento'
end

After do |scenario|
    # tira um print por favor
    time = Time.new
    sufix = ('fail' if scenario.failed?) || 'sucess'
    name = scenario.name.tr(' ','_').downcase
    shot = "logs/shots/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
end
