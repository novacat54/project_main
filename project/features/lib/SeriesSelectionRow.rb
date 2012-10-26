require_relative 'AllRows'

class SeriesSelectionRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@id, 'topten')]"
    @all_names = "#{@main_xpath}//h3/a"
    @name_element_xpath= "#{@main_xpath}//h3"
  end

end