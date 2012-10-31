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







