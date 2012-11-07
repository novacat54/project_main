Feature: TC1041 News - Features

  Scenario: Checking News Features content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYNEWS/Browse_by_Genre/News_Features/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 13 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "World Business Report : 05/11/2012" movie
    Then I should see "House of Commons : Live Work and Pensions Questions" content present in Hero Row T1

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."

    Then I should see "List Row" on the page
    Then I should see 58 teasers in List Row on the page
    Then List Row should contain "BBC Channel Islands News" movie
    Then I should see "East Midlands Today" content present in List Row
    Then I should see image for "Look North (North East and Cumbria)" movie in List Row