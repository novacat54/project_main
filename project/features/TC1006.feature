
Feature: TC1006 Entertainment Drama

  Scenario: Checking Entertainment Drama content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Drama/content/default/promoPage.do" page
    When I should see "List Row" on the page
    Then I should see 11 teasers in List Row on the page
    Then List Row should contain "Hunted" movie
    Then I should see "Nick Nickleby" content present in List Row
    Then I should see image for "Lie to Me Season 3" movie in List Row