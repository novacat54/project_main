class DynamicRow
  include RSpec::Matchers
  attr_accessor :all_names

  def initialize (main_xpath = "//div[contains(@class, 'listRows')]")
    @main_xpath = main_xpath
    @all_names = "#{@main_xpath}//h3"
  end

  #check content title
  def content_title
    @element_xpath = "#{@main_xpath}"
    Capybara.page.should have_selector(:xpath, @element_xpath)
  end

  # counting numbers of video
  def number_of_items
    @number_of_items= "#{@main_xpath}/div[@class]"
    Capybara.page.all(:xpath, @number_of_items).length
  end

  #check content link
  def get_name_of_elements(link)
    @name_element_xpath="//div[contains(@class,'promoItem')]/h3[a/span[@title='#{link}']]"
    Capybara.page.should have_selector(:xpath, @name_element_xpath)
  end

  # check image of video content
  def get_presence_of_image(name)
    title_xpath= "#{@main_xpath}//h3[contains(@title,'#{name}')]"
    @image_xpath= "#{title_xpath}/preceding-sibling::a/img"
    Capybara.page.should have_selector(:xpath, @image_xpath)
  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, @all_names).map { |element| movies << element[:title].strip }
    return movies
  end

end