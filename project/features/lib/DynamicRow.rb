require_relative 'AllRows'

class DynamicRow < AllRows
  include RSpec::Matchers

  def initialize (main_xpath = "//div[contains(@class, 'listRows')]")
    @main_xpath = main_xpath
    @all_names = "#{@main_xpath}//h3"
  end

  def get_presence_of_image(name)
    title_xpath= "#{@main_xpath}//h3[contains(@title,'#{name}')]"
    @image_xpath= "#{title_xpath}/preceding-sibling::a/img"
    Capybara.page.should have_selector(:xpath, @image_xpath)
  end


  def get_name_of_elements(link)
    @name_element_xpath="//div[contains(@class,'promoItem')]/h3[a/span[@title='#{link}']]"
    Capybara.page.should have_selector(:xpath, @name_element_xpath)
  end

end