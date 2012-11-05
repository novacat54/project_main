
Feature: TC1018 Movies - Modern Greats

  Scenario: Checking Movies Modern Greats Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Modern_Greats/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 6 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Brubaker" movie
    Then I should see "Airplane!" content present in Hero Row T1
    Then I should see image for "Airplane!" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 3 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 2 teasers
    Then Generic Promo Row should contain "Middle Men" movie
    Then I should see "Case 39" content present in Generic Promo Row
    Then I should see image for "Case 39" movie in Generic Promo Row

    Then I should see "Top Downloads Row" on the page
    Then 2 Top Downloads Row should be presented on page
    Then 2 Top Downloads Row should include 5 teasers
    Then Top Downloads Row should contain "Catch Me If You Can" movie
    Then I should see "Catch Me If You Can" content present in Top Downloads Row
    Then I should see image for "Catch Me If You Can" movie in Top Downloads Row