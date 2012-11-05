
Feature: TC1023 Movies - Indie

  Scenario: Checking Movies Indie Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Indie/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 2 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Brothers" movie
    Then I should see "Anything For Her" content present in Hero Row T1
    Then I should see image for "Brothers" movie in Hero Row T1

    Then I should see "Top Downloads Row" on the page
    Then 2 Top Downloads Row should be presented on page
    Then 1 Top Downloads Row should include 7 teasers
    Then Top Downloads Row should contain "Aliens in the Attic" movie
    Then I should see "Armored" content present in Top Downloads Row
    Then I should see image for "Alice in Wonderland" movie in Top Downloads Row

    Then I should see "Generic Promo Row" on the page
    Then 18 Generic Promo Row should be presented on page
    Then 3 Generic Promo Row should include 3 teasers
    Then Generic Promo Row should contain "Case 39" movie
    Then I should see "Killing Bono" content present in Generic Promo Row
    Then I should see image for "Bolt" movie in Generic Promo Row

    Then I should see "List Row" on the page
    Then I should see 2 teasers in List Row on the page
    Then List Row should contain "Middle Men" movie
    Then I should see "Bolt" content present in List Row
    Then I should see image for "Middle Men" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV"
