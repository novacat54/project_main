Feature: TC1013 Movies - Homepage

  Scenario: Checking Movies homepage content
    
   Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/content/default/promoPage.do" page
   Then I should see "Hero Row T1" on the page
   Then I should see 13 teasers in Hero Row T1 on the page
   Then Hero Row T1 should contain "Billy Madison" movie
   Then I should see "You Again" content present in Hero Row T1
   Then I should see image for "Zulu" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 37 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 2 teasers
    Then Generic Promo Row should contain "Goldfinger" movie
    Then I should see "Tomorrow Never Dies" content present in Generic Promo Row
    Then I should see image for "Tomorrow Never Dies" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant"

    Then I should see "Series Selection Row" on the page
    Then I should see 1 teasers in Series Row on the page
    Then Series Selection Row should contain "Stone of Destiny" movie
    Then I should see "Stone of Destiny" content present in Series Selection Row
    Then I should see image for "Stone of Destiny" movie in Series Selection Row
    When I click "Stone of Destiny" link
    Then I should see "Stone of Destiny" page

