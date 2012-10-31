class HeroRowT1 < AllRows
  def initialize
    #TODO: it's not main xpath, it's tabs_xpath
    #@main_xpath = "//div[contains(@id, 'heroRow1')]//li[@id='heroRow1tab1']//ul[@class='tabContent']"

    @main_xpath = "//div[contains(@class, 'hero-row')]"
    @movie_name_xpath = "#{@main_xpath}//p[@class='slotDetailsTitle']"

  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, @movie_name_xpath).map { |element| movies << element.text }
    return movies
  end

  def number_of_items
     Capybara.page.all(:xpath, @movie_name_xpath).length
  end

  def is_element_present?(name)
    return Capybara.page.should have_selector(:xpath, "#{@movie_name_xpath}[descendant-or-self::*[contains(text(),'#{name}')]]")
  end

  def is_image_present(name)
    image_xpath= "#{@movie_name_xpath}[descendant-or-self::*[contains(text(),'#{name}')]]/following-sibling::*[descendant-or-self::img]"
    return Capybara.page.should have_selector(:xpath, image_xpath)
  end
end