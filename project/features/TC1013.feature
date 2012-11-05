Feature: TC1013 Movies - Homepage

  Scenario: Checking Movies homepage content
    
   Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/content/default/promoPage.do" page
   Then I should see "Hero Row T1" on the page
   Then I should see 21 teasers in Hero Row T1 on the page
   Then Hero Row T1 should contain "Billy Madison" movie
   Then I should see "Blackout" content present in Hero Row T1
   Then I should see image for "Battle of the Bulge" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    #Then I should see 4 teasers in Generic Promo Row on the page
    Then Generic Promo Row should contain "Goldfinger" movie
    Then I should see "Tomorrow Never Dies" content present in Generic Promo Row
    Then I should see image for "Tomorrow Never Dies" movie in Generic Promo Row

