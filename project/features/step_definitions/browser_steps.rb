<<<<<<< HEAD

Given /^opened "(.*?)" page$/ do |url|
 visit url
  end

Then /^I should see "(.*?)" link$/ do |link|
    page.should have_link(link)
end


When /^I click "(.*)" link$/ do |link|
  click_link link
end

Then /^I should see "(.*?)" page$/ do |page|
  page.should have_content(page)
  sleep(5)
end

Then /^I should see image "(.*?)" title on page$/ do |name|
  page.should have_selector(:xpath, "//img[contains(@title,'#{name}')]")
end

Then /^I should see (\d+) "(.*?)" on the page$/ do |number, name|

  case name
    when 'DynamicRow'
      page.all(:xpath, @dynamic.numbers_of_video).length.should == number.to_i
      all(:xpath, @dynamic.all_titles).map{|element| p element[:title]}
  end
end

Then /^I should see "(.*?)" content title on the page$/ do |title|
  @dynamic=DynamicRow.new
  page.should have_selector(:xpath, @dynamic.content_title(title))
end

Then /^I should see "(.*?)" link on the page$/ do |link|
   page.should have_selector(:xpath, @dynamic.content_link(link))
end

Then /^I should see image of "(.*?)" title on the page/ do |name|
  page.should have_selector(:xpath, @dynamic.content_image(name))
end

=======
<<<<<<< HEAD
require_relative  '../../lib/SeriesSelectionRow'
=======
>>>>>>> a3633b13e05402e1f2fe098aa3d6d96afd5b51f7


Given /^opened "(.*?)" page$/ do |url|
 visit url
  sleep (5)
end

Then /^I should see "(.*?)" link$/ do |link|
    page.should have_link(link)
end


When /^I click "(.*)" link$/ do |link|
  click_link link
end

Then /^I should see "(.*?)" page$/ do |page|
  page.should have_content(page)
end

<<<<<<< HEAD
Then /^I should see image "(.*?)" title on page$/ do |name|
  page.should have_selector(:xpath, "//img[contains(@title,'#{name}')]")
end

Then /^I should see "(.*?)" on the page$/ do |name|
  case name
    when 'Series Selection Row'
      @series=SeriesSelectionRow.new
    page.should have_selector(:xpath, @series.xpath_of_elements(1))
  end

end

Then /^I should see (\d+) "(.*?)" on the page$/ do |number, name|
  case name
    when 'Series'
      page.all(:xpath, @series.counting_xpath).length.should == number.to_i
  end
end

Then /^I should see "(.*?)" title present in row$/ do |title|
  page.should have_selector(:xpath, @series.get_name_of_elements(title))
end

Then /^I should see image of "(.*?)" title$/ do |title|
  page.should have_selector(:xpath, @series.get_presence_of_image(title))
end


Then /^I want to get all content names for "(.*?)"$/ do |row_type|
  case row_type
    when "Series Selection Row"
      all(:xpath, @series.all_names).map{|element| p element[:title]}
  end
end
=======
Then /^I should see "(.*?)" title on page$/ do |name|
  list_row=ListRow.new
  page.should have_selector(:xpath, list_row.page_name(name))
end

Then /^I should see (\d+) "(.*?)" quantity on page$/ do |number, name|
  @list_row=ListRow.new

  page.all(:xpath, @list_row.items_number).length.should == number.to_i
  all(:xpath, @list_row.all_names).map{|name| p name[:title]}
 # page.should have_selector(:xpath, list_row.items_number)
end

Then /^I should see "(.*?)" link on page$/ do |link|
  list_row=ListRow.new
  page.should have_selector(:xpath, list_row.item_link(link))
end

Then /^I should see "(.*?)" image on page$/ do |name|
  list_row=ListRow.new
  page.should have_selector(:xpath, list_row.item_image(name))
end

#Then /^I should see (\d+) "(.*?)" on the page$/ do |number, name|
  #case name
  #  when 'Series'
    #  page.all(:xpath, @series.number_of_elements).length.should == number.to_i
    #  all(:xpath, @series.all_names).map{|element| p element[:title]}
 # end
# end
>>>>>>> a3633b13e05402e1f2fe098aa3d6d96afd5b51f7
>>>>>>> fe87a71812aa6df304a9511058367d0ceff0e413
