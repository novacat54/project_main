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

