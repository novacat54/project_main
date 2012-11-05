Feature: TC1014 Movies - Action

  Scenario: Checking Movies Action content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Action/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 13 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Thunderball" movie
    Then I should see "The Man With The Golden Gun" content present in Hero Row T1
    Then I should see image for "GoldenEye" movie in Hero Row T1

    Then I should see "Series Selection Row" on the page
    Then I should see 14 teasers in Series Row on the page
    Then Series Selection Row should contain "Blackout" movie
    Then I should see "Armored" content present in Series Selection Row
    Then I should see image for "Billy Madison" movie in Series Selection Row
    When I click "Battle of the Bulge" link
    Then I should see "Battle of the Bulge" page

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Action/content/default/promoPage.do" page
    Then I should see "Generic Promo Row" on the page
    #Then I should see 1 teasers in Generic Promo Row on the page
    Then Generic Promo Row should contain "Middle Men" movie
    Then I should see "Killing Bono" content present in Generic Promo Row
    Then I should see image for "Middle Men" movie in Generic Promo Row