Feature: TC1011 Entertainment Action

  Scenario: Checking Action content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Action/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 16 teasers in List Row on the page
    Then List Row should contain "Modern Family Season 2" movie
    Then I should see "Michael Wood: The Story of India" content present in List Row
    Then I should see image for "Me and Mrs Jones" movie in List Row
    When I click "Me and Mrs Jones" link
    Then I should see "Me and Mrs Jones" page