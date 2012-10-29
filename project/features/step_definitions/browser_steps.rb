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
      @dynamic.number_of_items.should == number.to_i

    when 'List Row'
      @list_row.number_of_items.should == number.to_i

    when 'Sci Fi'
      @sci_fi.number_of_items.should == number.to_i

    when 'Hero Row'
      @hero=HeroRow.new
      @hero.number_of_items.should == number.to_i

    when 'Arts'
      @arts=Arts.new
      @arts.number_of_items.should == number.to_i

    when 'Reality Teasers'
      @reality.number_of_items.should == number.to_i

    when 'Game Shows Teasers'
      @game_shows.number_of_items.should == number.to_i

  end
end


Then /^I should see "(.*?)" on the page$/ do |name|
  case name
    when 'Series Selection Row'
      @series=SeriesSelectionRow.new
      @series.content_title
    when 'Dynamic Row'
      @dynamic=DynamicRow.new
      @dynamic.content_title
    when 'List Row'
      @list_row=ListRow.new
      @list_row.content_title
    when 'Sci Fi'
      @sci_fi=SciFi.new
      @sci_fi.content_title
    when 'Arts'
      @arts=Arts.new
      @arts.content_title
    when 'Reality'
      @reality=Reality.new
      @reality.content_title
    when 'Game Shows'
      @game_shows=GameShows.new
      @game_shows.content_title
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
    when 'Sci Fi'
      @sci_fi.is_element_present?(title).should be_true
    when 'Arts'
      @arts.is_element_present?(title).should be_true
    when 'Reality'
      @reality.is_element_present?(title).should be_true
    when 'Game Shows'
      @game_shows.is_element_present?(title).should be_true
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
    when 'Sci Fi'
      @sci_fi.is_image_present(title).should be_true
    when 'Arts'
      @arts.is_image_present(title).should be_true
    when 'Reality'
      @reality.is_image_present(title).should be_true
    when 'Game Shows'
      @game_shows.is_image_present(title).should be_true
  end
end


Then /^I want to get array of movie names for (.*?) and check if it contains "(.*?)"$/ do |row_type, name|
  case row_type
    when 'Series Selection Row'
      @series.get_movie_names.should include(name)
    when 'Dynamic Row'
      @dynamic.get_movie_names.should include(name)
    when 'List Row'
      @list_row.get_movie_names.should include(name)
    when 'Sci Fi'
      @sci_fi.get_movie_names.should include(name)
    when 'Arts'
      @arts.get_movie_names.should include(name)
    when 'Reality'
      @reality.get_movie_names.should include(name)
    when 'Game Shows'
      @game_shows.get_movie_names.should include(name)
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






