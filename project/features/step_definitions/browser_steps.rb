Given /^opened "(.*?)" page$/ do |url|
 visit url
  sleep (5)
end

When /^I should see "(.*?)" link$/ do |link|
    page.should have_link(link)
end

Then /^I should see "(.*?)" image on the page$/ do |content|
  case content
    when 'Comedy'
      page.should have_selector(:xpath, "//div[@id='listRows ATI_listRows']//img[contains(@src,'S_AmericanRes_HopalongRick.jpg')]")
  end
end


