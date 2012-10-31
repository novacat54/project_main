require_relative 'AllRows'

class HeroRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@class, 'hero-row')]"
    @all_names = "#{@main_xpath}//li[contains(@class, 'slot')]//h3"
    @movie_name_xpath = "#{@main_xpath}//li[contains(@class, 'slot')]//h3"
  end

#derived tab title name on Hero row
   #TODO: no any link to the HeroRow?
  def content_title
    content_title_xpath= "//div[@class='rowFrame']//h2/a"
    content = []
    Capybara.page.all(:xpath, content_title_xpath).map { |element| content << element[:text] }
    return content
  end


  # check presence scrolls on Hero Row
   #TODO: no any link to the HeroRow?
  def scroll_button
    content_scroll = "//div[@class='rowFrame']//a[contains(@class,'Arrow')]"
    button = []
    Capybara.page.all(:xpath, content_scroll).map { |element| button << element[:title] }
    return button
  end

  #derived video title name
  #TODO: no any link to the HeroRow?
  def get_movies
    content_abc = "//div[@class='buttons ']/a"
    movies = []
    Capybara.page.all(:xpath, content_abc).map { |element| movies << element[:title] }
    return movies
  end

  def number_of_items
    @number_of_items="#{@movie_name_xpath}"
    Capybara.page.all(:xpath, @number_of_items).length
  end

end



