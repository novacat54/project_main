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
    when 'teasers in Series Row'
      @series.number_of_items.should == number.to_i

    when 'teasers in Dynamic Row'
      @dynamic.number_of_items.should == number.to_i

    when 'teasers in List Row'
      @list_row=ListRow.new
      @list_row.number_of_items.should == number.to_i

    when 'Hero Row'
      @hero=HeroRow.new
      @hero.number_of_items.should == number.to_i

    else
      raise "No rows founded"
  end
end


Then /^I should see "(.*?)" on the page$/ do |name|
  case name
    when 'Series Selection Row'
      @series=SeriesSelectionRow.new
      page.has_xpath?(@series.main_xpath).should be_true
    when 'Dynamic Row'
      @dynamic=DynamicRow.new
      page.has_xpath?(@dynamic.main_xpath).should be_true
    when 'List Row'
      @list_row=ListRow.new
      page.has_xpath?(@list_row.main_xpath).should be_true
    else
      raise "No row types matches"
  end
end

Then /^I should see "(.*?)" content presented in (.*?)$/ do |title, row_type|
  case row_type
    when 'Series Selection Row'
      @series.is_element_present?(title).should be_true
    when 'Dynamic Row'
      @dynamic.is_element_present?(title).should be_true
    when 'List Row'
      @list_row.is_element_present?(title).should be_true
    else
      raise "No row types matches"
  end
end

Then /^I should see image for "(.*?)" content in (.*?)$/ do |title, name|
  case name
    when 'Series Selection Row'
      @series.is_image_present(title).should be_true
    when 'Dynamic Row'
      @dynamic.is_image_present(title).should be_true
    when 'List Row'
      @list_row.is_image_present(title).should be_true
    else
      raise "No row types matches"
  end
end


Then /^I want to get movie names for (.*?) and check if it contains "(.*?)"$/ do |row_type, name|
  case row_type
    when 'Series Selection Row'
      @series.get_movie_names.should include(name)
    when 'Dynamic Row'
      @dynamic.get_movie_names.should include(name)
    when 'List Row'
      @list_row.get_movie_names.should include(name)
    else
      raise 'No matches founded'
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






