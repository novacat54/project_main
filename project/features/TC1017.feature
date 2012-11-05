
Feature: TC1017 Movies - Horror

  Scenario: Checking Movies Horror Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Horror/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 11 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Surveillance" movie
    Then I should see "Blackout" content present in Hero Row T1
    Then I should see image for "The Children" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 16 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 2 teasers
    Then Generic Promo Row should contain "Thunderball" movie
    Then I should see "GoldenEye" content present in Generic Promo Row
    Then I should see image for "GoldenEye" movie in Generic Promo Row

    Then I should see "Top Downloads Row" on the page
    Then 2 Top Downloads Row should be presented on page
    Then 2 Top Downloads Row should include 8 teasers
    Then Top Downloads Row should contain "Case 39" movie
    Then I should see "Anamorph" content present in Top Downloads Row
    Then I should see image for "The Children" movie in Top Downloads Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription"