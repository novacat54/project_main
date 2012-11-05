
Feature: TC1019 Movies Sky Movies 007

  Scenario: Checking Movies Sky Movies 007 content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Sky_Movies_007/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 10 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "The Living Daylights" movie
    Then I should see "GoldenEye" content present in Hero Row T1
    Then I should see image for "Tomorrow Never Dies" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 21 Generic Promo Row should be presented on page
    Then 2 Generic Promo Row should include 3 teasers
    Then Generic Promo Row should contain "Tomorrow Never Dies" movie
    Then I should see "The Living Daylights" content present in Generic Promo Row
    Then I should see image for "Dr No" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV"