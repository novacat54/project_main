class DynamicRow
  attr_accessor :all_titles

  def initialize
   @elements_xpath = "//div[contains(@class, 'listRow')]"
   @all_titles = "@elements_xpath//h3/a"
  end
                            #or
  #def initialize (elements_xpath = "//div[contains(@class, 'listingsRow')]")
  #  @elements_xpath = elements_xpath
  # end

  #check content title
  def content_title(title)
    content_title_xpath= "//div[contains(@class,'listingsRow')]/h2[text()='#{title}']"
  end

  # counting numbers of video
  def numbers_of_video
    counting_xpath="#{@elements_xpath}/div[@class]"
  end

  #check content link
  def content_link(link)
    link_xpath="//div[@class='promoItem odd']/h3[a/span[@title='#{link}']]"
  end

  # check image of video content
  def content_image(name)
  title_xpath= "#{@elements_xpath}//h3[contains(@title,'#{name}')]"
  image_xpath= "#{title_xpath}/preceding-sibling::a/img"
  end

end