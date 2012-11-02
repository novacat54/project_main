Then /^I should see (\d+) (teasers in )?(.*?) on the page$/ do |number, teaser, name|
  case name
    when 'Series Row'
      @series.number_of_items.should == number.to_i

    when 'Dynamic Row'
      @dynamic.number_of_items.should == number.to_i

    when 'List Row'
      @list_row=ListRow.new
      @list_row.number_of_items.should == number.to_i

    when 'Hero Row T1'
      @hero_t1.number_of_items.should == number.to_i

    when 'Hero Row'
      @hero=HeroRow.new
      @hero.number_of_items.should == number.to_i
    when 'Generic Promo Row'
       @generic_promo.number_of_items.should == number.to_i
    else
      raise 'No rows found'
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
    when 'Hero Row T1'
      @hero_t1=HeroRowT1.new
      page.has_xpath?(@hero_t1.main_xpath).should be_true
    when 'Generic Promo Row'
      @generic_promo=GenericPromoRow.new
      page.has_xpath?(@generic_promo.main_xpath).should be_true
    else
      raise 'No row types matches'
  end
end

Then /^I should see "(.*?)" content present in (.*?)$/ do |title, row_type|
  case row_type
    when 'Series Selection Row'
      @series.is_element_present?(title).should be_true
    when 'Dynamic Row'
      @dynamic.is_element_present?(title).should be_true
    when 'List Row'
      @list_row.is_element_present?(title).should be_true
    when 'Hero Row T1'
      @hero_t1.is_element_present?(title).should be_true
    when 'Generic Promo Row'
      @generic_promo.is_element_present?(title).should be_true
    else
      raise 'No row types matches'
  end
end

Then /^I should see image for "(.*?)" movie in (.*?)$/ do |title, name|
  case name
    when 'Series Selection Row'
      @series.is_image_present?(title).should be_true
    when 'Dynamic Row'
      @dynamic.is_image_present?(title).should be_true
    when 'List Row'
      @list_row.is_image_present?(title).should be_true
    when 'Hero Row T1'
      @hero_t1.is_image_present?(title).should be_true
    when 'Generic Promo Row'
      @generic_promo.is_image_present?(title).should be_true
    else
      raise 'No row types matches'
  end
end


Then /^(.*?) should contain "(.*?)" movie$/ do |row_type, name|
  case row_type
    when 'Series Selection Row'
      @series.get_movie_names.should include(name)
    when 'Dynamic Row'
      @dynamic.get_movie_names.should include(name)
    when 'List Row'
      @list_row.get_movie_names.should include(name)
    when 'Hero Row T1'
      @hero_t1.get_movie_names.should include(name)
    when 'Generic Promo Row'
      @generic_promo.get_movie_names.should include(name)
    else
      raise 'No matches found'
  end
end

Then /^I should see the following tabs titles on the (.*?):$/ do |name, table|
  case name
    when "Hero Row"
      table.raw.each do |title|
        @hero=HeroRow.new
        @hero.content_title.should include(title.join)
      end
    else
      raise 'No matches found'
  end
end

Then /^I should see scroll buttons for the (.*?):$/ do |name, table|
  case name
    when "Hero Row"
      table.raw.each do |title|
        @hero.scroll_button.should include(title.join)
      end
    else
      raise 'No matches found'
  end
end

Then /^I should see view more content present on the (.*?):$/  do |name, table|
  case name
    when "Hero Row"
      @hero=HeroRow.new
      table.raw.each do |title|
        @hero.get_movies.should include(title.join)
      end
    else
      raise 'No matches found'
  end
end

Then /^(\d+) (.*?) should be presented on page$/ do |number, row_type|
  case row_type
    when 'Generic Promo Row'
    @generic_promo.count_number_of_rows.should == number.to_i
  end
end

Then /^(\d+) (.*?) should include (\d+) teasers$/ do |number_of_row, row_type, number_of_teasers|
  case row_type
    when "Generic Promo Row"
    @generic_promo.number_of_items(number_of_row).should == number_of_teasers.to_i
  end
end