
Feature: TC1010 Entertainment SciFi

  Scenario: Checking Sci Fi content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Sci_Fi/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 3 teasers in List Row on the page
    Then List Row should contain "Doctor Who: Series 5" movie
    Then I should see "Merlin: Series 5" content present in List Row
    Then I should see image for "Stargate Universe Season 2" movie in List Row
    When I click "Doctor Who: Series 5" link
    Then I should see "Doctor Who: Series 5" page