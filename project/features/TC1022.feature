
Feature: TC1022 Movies - Drama

  Scenario: Checking Movies Drama Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 21 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "REC" movie
    Then I should see "You Again" content present in Hero Row T1
    Then I should see image for "Zulu" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 44 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 3 teasers
    Then Generic Promo Row should contain "Goldfinger" movie
    Then I should see "Tomorrow Never Dies" content present in Generic Promo Row
    Then I should see image for "Goldfinger" movie in Generic Promo Row