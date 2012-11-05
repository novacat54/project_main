
Feature: TC1022 Movies - Drama

  Scenario: Checking Movies Drama Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Drama/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 12 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Agora" movie
    Then I should see "Catch Me If You Can" content present in Hero Row T1
    Then I should see image for "28 Days" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 20 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 2 teasers
    Then Generic Promo Row should contain "Middle Men" movie
    Then I should see "Case 39" content present in Generic Promo Row
    Then I should see image for "Angels And Demons" movie in Generic Promo Row

    Then I should see "List Row" on the page
    Then I should see 5 teasers in List Row on the page
    Then List Row should contain "Brothers" movie
    Then I should see "Alice in Wonderland" content present in List Row
    Then I should see image for "Stone of Destiny" movie in List Row

    Then I should see "Top Downloads Row" on the page
    Then 2 Top Downloads Row should be presented on page
    Then 2 Top Downloads Row should include 9 teasers
    Then Top Downloads Row should contain "Catch Me If You Can" movie
    Then I should see "The Boys Are Back" content present in Top Downloads Row
    Then I should see image for "City Island" movie in Top Downloads Row