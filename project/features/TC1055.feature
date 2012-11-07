Feature: TC1055 Kids - Drama

  Scenario: Checking Kids Drama content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Drama/content/default/promoPage.do" page

    Then I should see "List Row" on the page
    Then I should see 14 teasers in List Row on the page
    Then List Row should contain "Leonardo: Series 2" movie
    Then I should see "MI High: Series 4" content present in List Row
    Then I should see image for "The Sparticle Mystery" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."
