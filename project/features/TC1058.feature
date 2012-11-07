Feature: TC1058 Kids - Factual

  Scenario: Checking Kids Factual content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Factual/content/default/promoPage.do" page

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."

    Then I should see "List Row" on the page
    Then I should see 12 teasers in List Row on the page
    Then List Row should contain "Blue Peter" movie
    Then I should see "Hero Squad" content present in List Row
    Then I should see image for "Project Parent" movie in List Row