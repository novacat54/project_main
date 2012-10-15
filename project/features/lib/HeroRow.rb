class HeroRow

#counting a video on Hero Row
  def number_of_items
    counting_xpath="#{@element_xpath}/li[@class]"
  end

#derived tab title name on Hero row
  def content_title(title)
    content_title_xpath= "//div[@class='rowFrame']//h2[a/span[text()='#{title}']]"
  end


  # check presence scrolls on Hero Row
  def scroll_button(scroll)
    content_scroll= "//div[@class='rowFrame']//a[@title='#{scroll}']"
  end

  #derived video title name
  def get_number_of_elements(title)
    content_view= "//div[@class='buttons ']/a[@title='#{title}']"
  end

end

