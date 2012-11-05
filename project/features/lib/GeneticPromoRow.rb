class GenericPromoRow < AllRows
  def initialize
    @main_xpath = "//div[contains(@class, 'ATI_genericPromoRow')]"
    @movie_name_xpath="#{@main_xpath}//h3"
  end

  #def get_movie_names
  #  movies = []
  #  Capybara.page.all(:xpath, "#{@movie_name_xpath}/a").map { |element| movies << element.text }
  #  return movies
  #end

  def is_element_present?(name)
    return Capybara.page.should have_selector(:xpath, "#{@movie_name_xpath}[descendant-or-self::*[contains(text(),'#{name}')]]")
  end

  def is_image_present?(name)
    image_xpath= "#{@movie_name_xpath}[descendant-or-self::*[contains(text(),'#{name}')]]/preceding-sibling::*[descendant-or-self::img]"
    return Capybara.page.should have_selector(:xpath, image_xpath)
  end

end