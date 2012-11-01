
Feature: ТС1005 Entertainment - Arts

  Scenario: Checking Entertainment Arts content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Arts/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 13 teasers in List Row on the page
    Then List Row should contain "Great Movie Mistakes: III: Not in 3D" movie
    Then I should see "Later... with Jools Holland: Series 41" content present in List Row
    Then I should see image for "Never Mind the Buzzcocks: Series 26" movie in List Row
    When I click "Never Mind the Buzzcocks: Series 26" link
    Then I should see "Never Mind the Buzzcocks: Series 26" page