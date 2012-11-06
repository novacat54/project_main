Feature: TC1060 Kids - Pre-school

  Scenario: Checking Kids Pre-School content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Pre-School/content/default/promoPage.do" page

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."

    Then I should see "List Row" on the page
    Then I should see 10 teasers in List Row on the page
    Then List Row should contain "Dani's House: Series Four : One Small Step For Sam" movie
    Then I should see "Alphablocks: Series 2 : Taps" content present in List Row
    Then I should see image for "The Lingo Show : Balancing Bug" movie in List Row