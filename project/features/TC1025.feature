
Feature: TC1025 Sports - Homepage

  Scenario: Checking Sports Homepage Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 31 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Canada v Zimbabwe" movie
    Then I should see "Barclays Premier League" content present in Hero Row T1

    Then I should see "Top Downloads Row" on the page
    Then 1 Top Downloads Row should be presented on page
    Then 1 Top Downloads Row should include 10 teasers
    Then Top Downloads Row should contain "African Odyssey" movie
    Then I should see "Rugby World Cup Winners 1999" content present in Top Downloads Row
    Then I should see image for "British Boxing Heroes: Richie Woodhall" movie in Top Downloads Row

    Then I should see "Generic Promo Row" on the page
    Then 1 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 4 teasers
    Then Generic Promo Row should contain "The Football League Show: 2012/2013" movie
    Then I should see "Rugby League Autumn Internationals: 2012" content present in Generic Promo Row
    Then I should see image for "See Hear: Series 32" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV"