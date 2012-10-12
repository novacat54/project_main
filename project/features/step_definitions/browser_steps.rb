
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

