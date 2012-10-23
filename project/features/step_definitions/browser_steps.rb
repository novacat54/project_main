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
    when 'Series Row'
      page.all(:xpath, @series.number_of_items).length.should == number.to_i

    #what is the difference for Video and Videos? You should manage by content type, not different words
    when 'Dynamic Row'
      page.all(:xpath, @dynamic.number_of_items).length.should == number.to_i

    when 'List Row'
      page.all(:xpath, @list_row.number_of_items).length.should == number.to_i
    @hero=HeroRow.new
    when 'Hero Row'
      page.all(:xpath, @hero.number_of_items).length.should == number.to_i
  end
end


Then /^I should see "(.*?)" on the page$/ do |name|
  case name
    when 'Series Selection Row'
      @series=SeriesSelectionRow.new
      page.should have_selector(:xpath, @series.content_title(1))
    when 'Dynamic Row'
      @dynamic=DynamicRow.new
      page.should have_selector(:xpath, @dynamic.content_title(name))
    when 'List Row'
      @list_row=ListRow.new
      page.should have_selector(:xpath, @list_row.content_title(name))
  end
end

Then /^I should see "(.*?)" content presented in (.*?)$/ do |title, row_type|
  case row_type
    when 'Series Selection Row'
      page.should have_selector(:xpath, @series.get_name_of_elements(title))
    when 'Dynamic Row'
      page.should have_selector(:xpath, @dynamic.get_name_of_elements(title))
    when 'List Row'
      page.should have_selector(:xpath, @list_row.get_name_of_elements(title))
  end
end

Then /^I should see image for "(.*?)" content in (.*?)$/ do |title, name|
  case name
    when 'Series Selection'
      page.should have_selector(:xpath, @series.get_presence_of_image(title))
    when 'Dynamic'
      page.should have_selector(:xpath, @dynamic.get_presence_of_image(title))
    when 'List'
      page.should have_selector(:xpath, @list_row.get_presence_of_image(title))
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
      all(:xpath, @dynamic.all_names).map { |element| p element[:title] }
    when 'List Row'
      all(:xpath, @list_row.all_names).map { |element| p element[:title] }
  end
end

Then /^I should see the following button tabs title on the Hero Row:$/ do |table|
  p table
  table.raw.each do |title|
    page.should have_selector(:xpath, HeroRow.new.content_title(title[0]) )
  end
end

Then /^I should see scroll buttons on the Hero row:$/ do |table|
  p table
  table.raw.each do |scroll|
    page.should have_selector(:xpath, HeroRow.new.scroll_button(scroll[0]))
  end
end

Then /^I should see view more content presented in the Hero Row:$/  do |table|
  p table
  table.raw.each do |title|
    page.should have_selector(:xpath, HeroRow.new.get_number_of_elements(title[0]))
  end
end



