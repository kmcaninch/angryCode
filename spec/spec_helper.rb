$LOAD_PATH << File.dirname(__FILE__) + '/../lib'

require 'rspec'
require 'watir-webdriver'
require 'page-object'
require 'page-object/page_factory'
require 'faker'
require 'pages'
require 'easy'

browser = Watir::Browser.new :firefox
browser.window.maximize

RSpec.configure do |config|
  config.include PageObject::PageFactory
  config.before(:all) {
    @browser = browser
    loginEasy
  }

  # config.after(:all) { @browser = browser
  # logoutEasy
  # browser.close }
end
