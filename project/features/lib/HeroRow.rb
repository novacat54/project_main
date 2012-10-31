require_relative 'AllRows'

class HeroRow < AllRows
  include RSpec::Matchers

  def initialize
    #TODO:   //li[contains(@class, 'slot smallSlot ATI')] should have one class, not three
    @main_xpath = "//div[@class= 'rowFrame']//li[contains(@class, 'slot smallSlot ATI')]"
    @all_names = "#{@main_xpath}//h3"
    @name_element_xpath = "#{@main_xpath}//h3"
  end

#derived tab title name on Hero row
  def content_title
    content_title_xpath= "//div[@class='rowFrame']//h2/a"
    content = []
    Capybara.page.all(:xpath, content_title_xpath).map { |element| content << element[:text] }
    return content
  end


  # check presence scrolls on Hero Row
  def scroll_button
    content_scroll = "//div[@class='rowFrame']//a[contains(@class,'Arrow')]"
    button = []
    Capybara.page.all(:xpath, content_scroll).map { |element| button << element[:title] }
    return button
  end

  #derived video title name
  def get_movies
    content_abc = "//div[@class='buttons ']/a"
    movies = []
    Capybara.page.all(:xpath, content_abc).map { |element| movies << element[:title] }
    return movies
  end
end



