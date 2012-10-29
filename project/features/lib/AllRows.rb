class AllRows

  include RSpec::Matchers

  def initialize
    @main_xpath = ''
    @all_names = ''
    @name_element_xpath = ''
  end

  def number_of_items
    @number_of_items="#{@main_xpath}/div[@class]"
    Capybara.page.all(:xpath, @number_of_items).length
  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, @all_names).map { |element| movies << element[:title].strip }
    return movies
  end

  def content_title
    Capybara.page.should have_selector(:xpath, @main_xpath)
  end

  def is_image_present(name)
    image_xpath= "#{@name_element_xpath}[descendant-or-self::*[contains(@title,'#{name}')]]/preceding-sibling::*[descendant-or-self::img]"
    return Capybara.page.should have_selector(:xpath, image_xpath)
  end

  def is_element_present?(name)
    return Capybara.page.should have_selector(:xpath, "#{@name_element_xpath}[descendant-or-self::*[contains(@title,'#{name}')]]")
  end

end