class HeroRowT1 < AllRows
  def initialize
    #TODO: it's not main xpath, it's tabs_xpath
    @main_xpath = "//div[contains(@id, 'heroRow1')]//li[@id='heroRow1tab1']//ul[@class='tabContent']"
    @all_names = "#{@main_xpath}//p[@class='slotDetailsTitle']"
    @name_element_xpath= "#{@main_xpath}//h3"
  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, @all_names).map { |element| movies << element.text }
    return movies
  end

  def number_of_items
    @number_of_items="#{@main_xpath}/li[@class]"
    Capybara.page.all(:xpath, @number_of_items).length
  end

  def is_element_present?(name)
    return Capybara.page.should have_selector(:xpath, "#{@name_element_xpath}[descendant-or-self::*[contains(text(),'#{name}')]]")
  end

  def is_image_present(name)
    image_xpath= "#{@name_element_xpath}[descendant-or-self::*[contains(text(),'#{name}')]]/following-sibling::*[descendant-or-self::img]"
    return Capybara.page.should have_selector(:xpath, image_xpath)
  end
end