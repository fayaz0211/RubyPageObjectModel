require 'rspec'
require 'selenium-webdriver'
require_relative '../pages/abstract_page'
require_relative '../pages/home_page'

describe 'My behaviour' do
  browser = nil

  before(:each) do
    browser = AbstractPage.new(Selenium::WebDriver.for :firefox, driver_path: 'C:\Ruby23-x64\bin\geckodriver.exe')
  end


  after(:each) do
    browser.tear_down
  end

  it 'search_for_hotels' do
   title = browser.navigate_to_page.navigate_to_hotel
expect(title.page_title).to be == 'Search Flights, Hotels & Car Hires | KAYAK'
  end
end