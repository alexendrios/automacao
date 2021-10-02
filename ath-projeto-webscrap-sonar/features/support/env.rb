require "allure-cucumber"
require "selenium-webdriver"
require "capybara"
require "capybara/cucumber"
require "faker"
require "rspec"
require "site_prism"
require "pry"
require "securerandom"


# carrega na constante "CONFIG" as configurações
# de acordo com o ambiente configurado
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{ENV["AMBIENTE"]}.yaml")

BROWSERS = ENV["BROWSERS"]

Capybara.register_driver :selenium do |app|
  case BROWSERS
  when "firefox_headless"
    option = ::Selenium::WebDriver::Firefox::Options.new(args: %w[--headless --disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option, desired_capabilities: { accept_insecure_certs: true })
  when "chrome_headless"
    option = ::Selenium::WebDriver::Chrome::Options.new(args: %w[--headless --window-size=1366x768 --disable-gpu --log-level=3])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option, desired_capabilities: { accept_insecure_certs: true })
  when "firefox"
    option = ::Selenium::WebDriver::Firefox::Options.new(args: %w[--disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: option, desired_capabilities: { accept_insecure_certs: true })
  when "chrome"
    option = ::Selenium::WebDriver::Chrome::Options.new(args: %w[--disable-gpu --disable-infobars])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option, desired_capabilities: { accept_insecure_certs: true })
  else
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = CONFIG["url_default"]
end

Capybara.default_max_wait_time = 15
Capybara.page.driver.browser.manage.window.maximize

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == "Before hook"
    return text if text == "After hook"
    "#{source.last.keyword}#{text}"
  end
end
