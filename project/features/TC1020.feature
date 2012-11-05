
Feature: TC1020 Movies Comedy

  Scenario: Checking Movies Comedy content

Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Comedy/content/default/promoPage.do" page
Then I should see "Hero Row T1" on the page
Then I should see 12 teasers in Hero Row T1 on the page
Then Hero Row T1 should contain "Billy Madison" movie
Then I should see "Clue" content present in Hero Row T1
Then I should see image for "Killing Bono" movie in Hero Row T1

Then I should see "Series Selection Row" on the page
Then I should see 7 teasers in Series Row on the page
Then Series Selection Row should contain "Adventureland" movie
Then I should see "All About Steve" content present in Series Selection Row
Then I should see image for "City Island" movie in Series Selection Row

Then I should see "Generic Promo Row" on the page
Then 28 Generic Promo Row should be presented on page
Then 4 Generic Promo Row should include 2 teasers
Then Generic Promo Row should contain "Tomorrow Never Dies" movie
Then I should see "Thunderball" content present in Generic Promo Row
Then I should see image for "GoldenEye" movie in Generic Promo Row

Then I should see "List Row" on the page
Then I should see 10 teasers in List Row on the page
Then List Row should contain "Canada v Zimbabwe" movie
Then I should see "Sri Lanka v Pakistan" content present in List Row
Then I should see image for "England v South Africa" movie in List Row


