
Feature: TC1021 Movies Sci-Fi

  Scenario: Checking Movies Sci-Fi content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Sci-Fi/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 12 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "City Island" movie
    Then I should see "All About Steve" content present in Hero Row T1
    Then I should see image for "Aliens in the Attic" movie in Hero Row T1

    Then I should see "Series Selection Row" on the page
    Then I should see 1 teasers in Series Row on the page
    Then Series Selection Row should contain "Ice Age 3: Dawn of the Dinosaurs" movie
    Then I should see "City Island" content present in Series Selection Row
    Then I should see image for "Clue" movie in Series Selection Row

    Then I should see "Generic Promo Row" on the page
    Then 2 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 3 teasers
    Then Generic Promo Row should contain "Stone of Destiny" movie
    Then I should see "Aliens in the Attic" content present in Generic Promo Row
    Then I should see image for "Goldfinger" movie in Generic Promo Row

    Then I should see "List Row" on the page
    Then I should see 3 teasers in List Row on the page
    Then List Row should contain "Case 39" movie
    Then I should see "Adam" content present in List Row
    Then I should see image for "Stone of Destiny" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Free for Sky TV and Sky Player TV customers"