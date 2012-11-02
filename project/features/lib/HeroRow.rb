require_relative 'AllRows'

class HeroRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@class, 'hero-row')]"
    @movie_name_xpath = "#{@main_xpath}//p[@class='slotDetailsTitle']"
  end

#derived tab title name on Hero row
   #TODO: no any link to the HeroRow?
  def content_title
    content_title_xpath= "#{@main_xpath}//h2/a"
    content = []
    Capybara.page.all(:xpath, content_title_xpath).map { |element| content << element[:text] }
    return content
  end


  # check presence scrolls on Hero Row
   #TODO: no any link to the HeroRow?
  def scroll_button
    content_scroll = "#{@main_xpath}//a[contains(@class,'Arrow')]"
    button = []
    Capybara.page.all(:xpath, content_scroll).map { |element| button << element[:title] }
    return button
  end

  #derived video title name
  #TODO: no any link to the HeroRow?
  def get_movies
    movies = []
    Capybara.page.all(:xpath, @movie_name_xpath).map { |element| movies << element.text }
    return movies
  end

  def number_of_items
    Capybara.page.all(:xpath, @movie_name_xpath).length
  end

end



