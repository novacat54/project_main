

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