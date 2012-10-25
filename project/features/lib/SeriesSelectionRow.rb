require_relative 'AllRows'

class SeriesSelectionRow < AllRows
   include RSpec::Matchers


   def initialize (main_xpath = "//div[contains(@id, 'topten')]")
    @main_xpath = main_xpath
    @all_names = "#{@main_xpath}//h3/a"
   end

  def get_presence_of_image(name)
    @name_element_xpath= "#{@main_xpath}//h3[a[contains(@title,'#{name}')]]"
    @image_xpath= "#{@name_element_xpath}/preceding-sibling::img"
    Capybara.page.should have_selector(:xpath, @image_xpath)
  end

  def get_name_of_elements(name)
     @name_element_xpath= "#{@main_xpath}//h3[a[contains(@title,'#{name}')]]"
     Capybara.page.should have_selector(:xpath, @name_element_xpath)
  end

end