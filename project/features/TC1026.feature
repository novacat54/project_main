Feature: TC1026 Sports - Football

  Scenario: Checking Sports Football content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Football/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 8 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Barclays Premier League" movie
    Then I should see "FIFA World Cup Classic Matches" content present in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 6 Generic Promo Row should be presented on page
    Then 3 Generic Promo Row should include 1 teasers
    Then Generic Promo Row should contain "Football Rivalries: Manchester United v Liverpool" movie
    Then I should see "Celebrating the Goal" content present in Generic Promo Row
    Then I should see image for "African Odyssey" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Free* for Sky TV and Sky Player TV customers"

    Then I should see "List Row" on the page
    Then I should see 13 teasers in List Row on the page
    Then List Row should contain "Football Rivalries: Slavia Prague v Sparta Prague" movie
    Then I should see "World Cup Classic Matches: Brazil v England 1970" content present in List Row
    Then I should see image for "Football Rivalries: Manchester United v Liverpool" movie in List Row
