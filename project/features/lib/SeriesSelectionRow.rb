require_relative 'AllRows'

class SeriesSelectionRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@class, 'topten')]"
    @movie_name_xpath= "#{@main_xpath}//li[contains(@class, 'ATI_navItem')]"

  end

  def is_image_present?(name)
    # Capybara.page.should have_selector(:xpath, "#{@main_xpath}//span[text()=' Sel Cartoonito Series1']")
    image_xpath= "#{@main_xpath}//span[contains(text(), '#{name}')]/ancestor-or-self::span/preceding-sibling::img"
    return Capybara.page.should have_selector(:xpath, image_xpath)
  end


end