Feature: TC1015 Movies - Classics

  Scenario: Checking Movies Classics content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Classics/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 9 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "You Again" movie
    Then I should see "Charade" content present in Hero Row T1
    Then I should see image for "Battle of the Bulge" movie in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 19 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 3 teasers
    Then Generic Promo Row should contain "Goldfinger" movie
    Then I should see "Alice in Wonderland" content present in Generic Promo Row
    Then I should see image for "Billy Madison" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Free for Sky TV and Sky Player TV"

    Then I should see "Series Selection Row" on the page
    Then I should see 4 teasers in Series Row on the page
    Then Series Selection Row should contain "Charade" movie
    Then I should see "Battle of the Bulge" content present in Series Selection Row
    Then I should see image for "The Adventures of Robin Hood" movie in Series Selection Row
    When I click "You Again" link
    Then I should see "You Again" page