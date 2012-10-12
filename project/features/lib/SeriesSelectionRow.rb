class SeriesSelectionRow
   attr_accessor :all_names, :counting_xpath

   def initialize (base_xpath = "//div[contains(@id, 'topten')]")
    @base_xpath = base_xpath
    @all_names = "#{@base_xpath}//h3/a"
    @counting_xpath="#{@base_xpath}/div[@class]"
  end

  def xpath_of_elements(number)
   @element_xpath = "#{@base_xpath}[#{number}]"
  end

  def get_presence_of_image(name)
    @name_element_xpath= "#{@base_xpath}//h3[a[contains(@title,'#{name}')]]"
    @image_xpath= "#{@name_element_xpath}/preceding-sibling::img"
  end

  def get_name_of_element(name)
     @name_element_xpath= "#{@base_xpath}//h3[a[contains(@title,'#{name}')]]"
  end

end

