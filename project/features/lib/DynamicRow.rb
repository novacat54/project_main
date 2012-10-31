require_relative 'AllRows'

class DynamicRow < AllRows
  include RSpec::Matchers

  def initialize
    @main_xpath = "//div[contains(@class, 'listRows')]"
    @movie_name_xpath = "#{@main_xpath}//h3"
  end

  #def is_image_present?(name)
  #  image_xpath = "#{@movie_name_xpath}[descendant-or-self::*[contains(@title,'#{name}')]]/preceding-sibling::*[descendant-or-self::img]"
  #  # image_xpath = "#{@movie_name_xpath}[contains(@title,'#{name}')]/preceding-sibling::*[descendant-or-self::img]"
  #  return Capybara.page.should have_selector(:xpath, image_xpath)
  #end


end