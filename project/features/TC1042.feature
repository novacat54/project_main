Feature: TC1042 News - Showbiz

  Scenario: Checking News Showbiz content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYNEWS/Browse_by_Genre/Showbiz/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 13 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Sunday Politics Yorkshire and Lincolnshire : 04/11/2012" movie
    Then I should see "Daily Politics : 06/11/2012" content present in Hero Row T1

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."

    Then I should see "List Row" on the page
    Then I should see 11 teasers in List Row on the page
    Then List Row should contain "Briefings" movie
    Then I should see "Business Questions" content present in List Row
    Then I should see image for "America this Week" movie in List Row
