# encoding: utf-8
require 'test/unit'
require_relative '../pages/search_google_page'
require 'rspec'

class SearchGoogle < Test::Unit::TestCase


  # Important:- Use gecko driver while running seleniun 3.0 with FF version above 48.0
  # @driver = Selenium::WebDriver.for :firefox,driver_path: 'C:\\Ruby23-x64\\bin\\geckodriver.exe'

  def test_first
    url = 'http://www.google.com'
    page = SearchGooglePage.new(url)
    puts 'test passed!!..added older version of github plugin second attempt'
    page.search_for_any_word('selenium')
    page.browser_quit

  end
end
