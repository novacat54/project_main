class SeriesSelectionRow
   attr_accessor :all_names, :number_of_items

   def initialize (base_xpath = "//div[contains(@id, 'topten')]")
    @base_xpath = base_xpath
    @all_names = "#{@base_xpath}//h3/a"
    @number_of_items="#{@base_xpath}/div[@class]"
  end

  def content_title(number)
   @element_xpath = "#{@base_xpath}[#{number}]"
  end

  def get_presence_of_image(name)
    @name_element_xpath= "#{@base_xpath}//h3[a[contains(@title,'#{name}')]]"
    @image_xpath= "#{@name_element_xpath}/preceding-sibling::img"
  end

  def get_name_of_elements(name)
     @name_element_xpath= "#{@base_xpath}//h3[a[contains(@title,'#{name}')]]"
  end

end

