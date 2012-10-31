class AllRows

  include RSpec::Matchers
  attr_accessor :main_xpath

  def initialize
    @main_xpath = ''
    @movie_name_xpath = ''
  end

  def number_of_items
    @number_of_items="#{@main_xpath}/div[contains(@class, 'promoItem')]"
    return Capybara.page.all(:xpath, @number_of_items).length
  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, "#{@movie_name_xpath}/a").map { |element| movies << element.text }
    return movies
  end

  def is_image_present?(name)
    image_xpath = "#{@movie_name_xpath}[descendant-or-self::*[contains(@title,'#{name}')]]/preceding-sibling::*[descendant-or-self::img]"
    return Capybara.page.should have_selector(:xpath, image_xpath)
  end

  def is_element_present?(name)
    return Capybara.page.should have_selector(:xpath, "#{@movie_name_xpath}[descendant-or-self::*[contains(@title,'#{name}')]]")
  end

end