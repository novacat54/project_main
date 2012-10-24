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
      @series.number_of_items.should == number.to_i

    when 'Dynamic Row'
      page.all(:xpath, @dynamic.number_of_items).length.should == number.to_i

    when 'List Row'
      @list_row.number_of_items.should == number.to_i

    when 'Hero Row'
      page.all(:xpath, @hero.number_of_items).length.should == number.to_i
  end
end


Then /^I should see "(.*?)" on the page$/ do |name|
  case name
    when 'Series Selection Row'
      @series=SeriesSelectionRow.new
      @series.content_title(1)
    when 'Dynamic Row'
      @dynamic=DynamicRow.new
      page.should have_selector(:xpath, @dynamic.content_title(name))
    when 'List Row'
      @list_row=ListRow.new
      @list_row.content_title(1)
  end
end

Then /^I should see "(.*?)" content presented in (.*?)$/ do |title, row_type|
  case row_type
    when 'Series Selection Row'
      @series.get_name_of_elements(title)
    when 'Dynamic Row'
      page.should have_selector(:xpath, @dynamic.get_name_of_elements(title))
    when 'List Row'
      @list_row.get_name_of_elements(title)
  end
end

Then /^I should see image for "(.*?)" content in (.*?)$/ do |title, name|
  case name
    when 'Series Selection Row'
      @series.get_presence_of_image(title)
    when 'Dynamic'
      page.should have_selector(:xpath, @dynamic.get_presence_of_image(title))
    when 'List Row'
      @list_row.get_presence_of_image(title)
  end
end


Then /^I want to get array of movie names for (.*?) and check if it contains "(.*?)"$/ do |row_type, name|
  case row_type
    when 'Series Selection Row'
      @series.get_movie_names.should include(name)
    when 'Dynamic Row'
      @dynamic.get_movie_names.join(";").should have_content(name)
    when 'List Row'
      @list_row.get_movie_names.should include(name)
  end
end

Then /^I should see the following tabs title on the (.*?):$/ do |name, table|
  case name
    when "Hero Row"
      table.raw.each do |title|
        @hero=HeroRow.new
        @hero.content_title.should include(title.join)
      end
  end
end

Then /^I should see scroll buttons on the (.*?):$/ do |name, table|
  case name
    when "Hero Row"
      table.raw.each do |title|
        @hero.scroll_button.should include(title.join)
      end
  end
end

Then /^I should see view more content presented on the (.*?):$/  do |name, table|
  case name
    when "Hero Row"
      @hero=HeroRow.new
      table.raw.each do |title|
        @hero.get_movies.should include(title.join)
      end
  end
end






