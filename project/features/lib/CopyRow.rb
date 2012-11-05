class CopyRow < AllRows
  def initialize
    @main_xpath = "//div[contains(@class, 'copy-row')]"
  end

  def text_inside_row(text)
    Capybara.page.has_xpath?("#{@main_xpath}//p[contains(text(),'#{text}')]")
  end

end