Feature: TC1044 News - Homepage

  Scenario: Checking News Homepage content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYNEWS/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 26 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Dateline London" movie
    Then I should see "Look East - West" content present in Hero Row T1

    Then I should see "List Row" on the page
    Then I should see 16 teasers in List Row on the page
    Then List Row should contain "Spotlight : 06/11/2012" movie
    Then I should see "BBC Points West : 06/11/2012" content present in List Row
    Then I should see image for "South Today : 06/11/2012" movie in List Row

    Then I should see "Generic Promo Row" on the page
    Then 1 Generic Promo Row should be presented on page
    Then 4 Generic Promo Row should include 0 teasers
    Then Generic Promo Row should contain "House of Commons" movie
    Then I should see "Washington Journal" content present in Generic Promo Row
    Then I should see image for "America this Week" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."
