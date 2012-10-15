Given /^opened "(.*?)" page$/ do |url|
  visit url
end

When /^I click "(.*)" link$/ do |link|
  click_link link
end

Then /^I should see "(.*?)" link$/ do |link|
  page.should have_link(link)
end

Then /^I should see "(.*?)" page$/ do |page|
  page.should have_content(page)
end


Then /^I should see (\d+) (.*?) on the page$/ do |number, name|
  case name
    when 'Series'
      page.all(:xpath, @series.counting_xpath).length.should == number.to_i


    #what is the difference for Video and Videos? You should manage by content type, not different words
    when 'Video'
      page.all(:xpath, @dynamic.numbers_of_video).length.should == number.to_i

    when 'Videos'
      page.all(:xpath, @list_row.items_number).length.should == number.to_i

    when 'HeroRow'
      page.all(:xpath, @hero.numbers_of_video).length.should == number.to_i
  end
end


Then /^I should see "(.*?)" on the page$/ do |name|
  case name
    when 'Series Selection Row'
      @series=SeriesSelectionRow.new
      page.should have_selector(:xpath, @series.xpath_of_elements(1))
    when 'Dynamic Row'
      @dynamic=DynamicRow.new
      page.should have_selector(:xpath, @dynamic.content_title(name))
    when 'List Row'
      @list_row=ListRow.new
      page.should have_selector(:xpath, @list_row.page_name(name))
  end
end

Then /^I should see "(.*?)" content presented in (.*?)$/ do |title, row_type|
  case row_type
    when 'Series Selection'
      page.should have_selector(:xpath, @series.get_name_of_element(title))
    when 'Dynamic'
      page.should have_selector(:xpath, @dynamic.content_link(title))
    when 'List'
      page.should have_selector(:xpath, @list_row.item_link(title))
    when 'Hero Row'
      @hero=HeroRow.new
      page.should have_selector(:xpath, @hero.view_more_title(title))
  end
end

Then /^I should see image for "(.*?)" content in (.*?)$/ do |title, name|
  case name
    when 'Series Selection'
      page.should have_selector(:xpath, @series.get_presence_of_image(title))
    when 'Dynamic'
      page.should have_selector(:xpath, @dynamic.content_image(title))
    when 'List'
      page.should have_selector(:xpath, @list_row.item_image(title))
  end
end

# Denis created step just for self-learning, you all copied it and didn't finish it as was expected.
# Task was to get array of movie names and check if it contains expected movie name.
# What is the sens of your step?
Then /^I want to get all content names for (.*?)$/ do |row_type|
  case row_type
    when 'Series Selection Row'
      all(:xpath, @series.all_names).map { |element| p element[:title] }
    when 'Dynamic Row'
      all(:xpath, @dynamic.all_titles).map { |element| p element[:title] }
    when 'List Row'
      all(:xpath, @list_row.all_names).map { |name| p name[:title] }
  end
end

Then /^I should see "(.*?)" button tab title on the Hero Row$/ do |title|
  @hero=HeroRow.new
  page.should have_selector(:xpath, @hero.content_title(title))
end

Then /^I should see "(.*?)" on the HeroRow$/ do |scroll|
  page.should have_selector(:xpath, @hero.scroll_button(scroll))
end

