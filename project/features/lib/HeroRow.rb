class HeroRow
  include RSpec::Matchers
  attr_accessor :all_names
  def initialize
    @elements_xpath = "//div[contains(@class, 'HeroRow')]"
    @all_names = "#{@elements_xpath}//h3"
  end

#counting a video on Hero Row
  def number_of_items
    counting_xpath="#{@element_xpath}/li[@class]"
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



