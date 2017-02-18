require 'selenium-webdriver'
require 'rspec'
class SearchGooglePage

  def initialize(url)
    @driver = Selenium::WebDriver.for :firefox
    @driver.get url
  end

  def search_for_any_word(search_word)
    @driver.find_element(:name, 'q').send_keys search_word
    @driver.find_element(:name, 'btnG').click
  end

  def browser_quit
    @driver.quit
  end
end