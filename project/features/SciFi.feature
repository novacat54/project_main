Feature: Entertainment SciFi
  Scenario: open web site and check Sci-Fi page

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Sci_Fi/content/default/promoPage.do" page
    Then I should see "Sci Fi" on the page
    Then I should see 3 teasers in List Row on the page
    Then I want to get array of movie names for Sci Fi and check if it contains "Doctor Who: Series 5"
    Then I should see "Merlin: Series 5" content presented in List Row
    Then I should see image for "Stargate Universe Season 2" content in List Row
    Then I should see "*Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription" on the page
    When I click "Doctor Who: Series 5" link
    Then I should see "Doctor Who: Series 5" page