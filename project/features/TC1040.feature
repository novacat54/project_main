
Feature: TC1040 News Spacials

  Scenario: Checking News Spacials content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYNEWS/Browse_by_Genre/News_Specials/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 13 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "World News Today : 06/11/2012" movie
    Then I should see "World Business Report : 06/11/2012" content present in Hero Row T1
    Then I should see image for "House of Commons : 06/11/2012" movie in Hero Row T1

    Then I should see "List Row" on the page
    Then I should see 58 teasers in List Row on the page
    Then List Row should contain "This Week" movie
    Then I should see "Sunday Politics London" content present in List Row
    Then I should see image for "Panorama" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "* Included as part of the relevant Sky TV"