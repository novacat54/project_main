Feature: TC1053 Kids - Adventure

  Scenario: Checking Kids Adventure content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Adventure/content/default/promoPage.do" page

    Then I should see "List Row" on the page
    Then I should see 10 teasers in List Row on the page
    Then List Row should contain "Deadly 60: Series Three" movie
    Then I should see "Deadly 60: Series Three" content present in List Row
    Then I should see image for "Alphablocks: Series 2" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."