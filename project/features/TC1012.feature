Feature: TC1012 Entertainment Comedy

  Scenario: Checking Comedy content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Comedy/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 4 teasers in List Row on the page
    Then List Row should contain "Modern Family Season 2" movie
    Then I should see "Modern Family Season 2" content present in List Row
    Then I should see image for "Modern Family Season 2" movie in List Row
    When I click "Modern Family Season 2" link
    Then I should see "Raising Hope Season 1" page