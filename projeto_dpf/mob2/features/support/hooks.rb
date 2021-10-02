After('@logout') do
    find(:css, 'body > div.wrapper.ng-scope > application > pf-layout > div > pf-navbar > header > nav > div.nav-wrapper > ul:nth-child(2) > li > a').click
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
