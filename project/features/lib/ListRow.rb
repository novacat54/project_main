class ListRow
  include RSpec::Matchers
  attr_accessor :all_names

  def initialize (main_xpath = "//div[contains(@class, 'listRows ATI_listRows')]")
    @main_xpath = main_xpath
    @all_names="#{@main_xpath}//h3"
  end

  def content_title (title)
    @element_xpath = "#{@main_xpath}[#{title}]"
    Capybara.page.should have_selector(:xpath, @element_xpath)
  end


  def number_of_items
    @number_of_items="#{@main_xpath}/div[@class]"
    Capybara.page.all(:xpath, @number_of_items).length
  end

  def get_name_of_elements (link)
    item_link_xpath="//div[@class='promoItem odd']/h3[a/span[@title='#{link}']]"
    Capybara.page.should have_selector(:xpath, item_link_xpath)
  end

  def get_presence_of_image (name)
    @name_element_xpath= "//div[@class='promoItem odd']/h3[contains(@title,'#{name}')]"
    @image_xpath= "#{@name_element_xpath}/preceding-sibling::a/img"
    Capybara.page.should have_selector(:xpath, @image_xpath)
  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, @all_names).map { |element| movies << element[:title] }
    return movies
  end

end

