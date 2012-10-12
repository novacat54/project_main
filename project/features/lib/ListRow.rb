class ListRow
      attr_accessor :all_names
  def initialize (main_xpath = "//div[contains(@class, 'listRows ATI_listRows')]")
    @main_xpath = main_xpath
    @all_names="#{@main_xpath}//h3"
  end

  def page_name (title)
     page_name_xpath= "//div[contains(@class,'listingsRow')]/h2[text()='#{title}']"
  end

  def items_number
    counting_xpath="#{@main_xpath}/div[@class]"
  end

  def item_link (link)
     item_link_xpath="//div[@class='promoItem odd']/h3[a/span[@title='#{link}']]"
  end

  def item_image (name)
    @name_element_xpath= "//div[@class='promoItem odd']/h3[contains(@title,'#{name}')]"
    @image_xpath= "#{@name_element_xpath}/preceding-sibling::a/img"
  end

end

