require "selenium-webdriver"
require "capybara"
require 'capybara/cucumber'
require "rspec"
require 'site_prism'



Capybara.register_driver :insecure_selenium do |app|
  
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: { accept_insecure_certs: true }
  )
  
  
end

Capybara.configure do |config|

  config.run_server = false
  config.default_driver = :insecure_selenium
end

Capybara.default_max_wait_time = 5
Capybara.page.driver.browser.manage.window.maximize