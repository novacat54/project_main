require_relative 'AllRows'

class DynamicRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@class, 'listRows')]"
    @all_names = "#{@main_xpath}//h3"
    @name_element_xpath = "#{@main_xpath}//h3"
  end

end