require 'rspec'
require 'selenium-webdriver'

class AbstractPage
  @@driver = nil

  def initialize(driver)
    @@driver = driver
  end

  def navigate_to_page
    @@driver.navigate.to("https://www.kayak.co.uk/")
    return HomePage.new(@@driver)
  end
  def tear_down
 @@driver.quit
  end

  def page_title
  return @@driver.title
end
end
