Feature: TC1056 Kids - Entertainment & Comedy

  Scenario: Checking Kids Entertainment & Comedy content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Entertainment_and_Comedy/content/default/promoPage.do" page

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."

    Then I should see "List Row" on the page
    Then I should see 47 teasers in List Row on the page
    Then List Row should contain "Wingin' It: Series 2" movie
    Then I should see "OOglies: Series 1" content present in List Row
    Then I should see image for "Arthur: Series 9" movie in List Row