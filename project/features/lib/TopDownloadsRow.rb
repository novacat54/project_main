class TopDownloadsRow < AllRows
  def initialize
    @main_xpath = "//div[contains(@class, 'ATI_topTenRow')]"
    @movie_name_xpath="#{@main_xpath}//h3"
  end

  def get_movie_names
    movies = []
    Capybara.page.all(:xpath, "#{@movie_name_xpath}/a").map { |element| movies << element[:title].strip }
    return movies
  end

end