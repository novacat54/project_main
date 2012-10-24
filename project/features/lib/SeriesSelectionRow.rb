class SeriesSelectionRow
   include RSpec::Matchers
   attr_accessor :all_names

   def initialize (base_xpath = "//div[contains(@id, 'topten')]")
    @base_xpath = base_xpath
    @all_names = "#{@base_xpath}//h3/a"
   end

   def number_of_items
    @number_of_items="#{@base_xpath}/div[@class]"
    Capybara.page.all(:xpath, @number_of_items).length
   end

  def content_title(number)
   @element_xpath = "#{@base_xpath}[#{number}]"
   Capybara.page.should have_selector(:xpath, @element_xpath)
  end

  def get_presence_of_image(name)
    @name_element_xpath= "#{@base_xpath}//h3[a[contains(@title,'#{name}')]]"
    @image_xpath= "#{@name_element_xpath}/preceding-sibling::img"
    Capybara.page.should have_selector(:xpath, @image_xpath)
  end

  def get_name_of_elements(name)
     @name_element_xpath= "#{@base_xpath}//h3[a[contains(@title,'#{name}')]]"
     Capybara.page.should have_selector(:xpath, @name_element_xpath)
  end

   def get_movie_names
     movies = []
     Capybara.page.all(:xpath, @all_names).map { |element| movies << element[:title].strip }
     return movies
   end

end

