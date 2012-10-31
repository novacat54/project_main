require_relative 'AllRows'

class ListRow < AllRows

  def initialize
    @main_xpath = "//div[contains(@class, 'listRows')]"
    @movie_name_xpath="#{@main_xpath}//h3"
  end

end

