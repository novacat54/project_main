class AllRows

  include RSpec::Matchers

  def initialize (main_xpath, all_names)
    @main_xpath = main_xpath
    @all_names = all_names
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

end