require_relative 'AllRows'

class DynamicRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@class, 'listRows')]"
    @movie_name_xpath = "#{@main_xpath}//h3"
  end

end