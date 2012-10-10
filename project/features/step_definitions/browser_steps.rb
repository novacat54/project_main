Given /^opened "(.*?)" page$/ do |url|
 visit url
  sleep (5)
end

When /^I should see "(.*?)" link$/ do |link|
    page.should have_link(link)
end


