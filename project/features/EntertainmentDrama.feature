Feature: Testing Entertainment Drama

  Scenario: Checking Entertainment Drama page content presence

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Drama/content/default/promoPage.do" page
    When I should see "List Row" on the page
    Then I should see 13 teasers in List Row on the page
    Then I want to get movie names for List Row and check if it contains "Lilyhammer"
    Then I should see "New Tricks: Series 9" content present in List Row
    Then I should see image for "Lie to Me Season 3" content in List Row