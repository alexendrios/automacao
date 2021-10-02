Before do |scenario|
    $driver.start_driver
end


After do |scenario|

	time = Time.new
	
	sufix = ('fail' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase
	shot = "logs/shots/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png"
	screenshot(shot)
	embed(shot, 'image/png', 'Clique aqui para ver o print da tela')

	$driver.driver_quit
end
