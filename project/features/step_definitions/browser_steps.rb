require_relative  '../../lib/SeriesSelectionRow'


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
