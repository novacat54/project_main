require_relative 'AllRows'

class SciFi < AllRows

  def initialize
    @main_xpath = "//div[contains(@class, 'listRows ATI_listRows')]"
    @all_names="#{@main_xpath}//h3"
    @name_element_xpath="#{@main_xpath}//h3"
  end

end
