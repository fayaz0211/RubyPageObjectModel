require_relative '../pages/abstract_page'
require_relative '../pages/hotel_page'

class HomePage < AbstractPage
  def initialize(driver)
 super(driver)
  end

  def navigate_to_hotel
    sleep 3
    @@driver.find_element(:xpath ,'//header/div/div[2]/nav/div/div[1]/a').click
    return HotelPage.new(@@driver)
  end
end