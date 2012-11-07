
Feature: TC1009 Entertainment Reality

  Scenario: Checking Reality content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Reality/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 13 teasers in List Row on the page
    Then List Row should contain "Operation Iceberg" movie
    Then I should see "Kidult" content present in List Row
    Then I should see image for "Operation Iceberg" movie in List Row
    When I click "Timeshift: Series 12" link
    Then I should see "Order and Disorder" page







