
Feature: Entertainment Reality

  Scenario: Opening page and check elements

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Reality/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 15 teasers in List Row on the page
    Then I want to get movie names for List Row and check if it contains "Lifeline"
    Then I should see "Order and Disorder" content present in List Row
    Then I should see image for "Claimed and Shamed" content in List Row
    When I click "Order and Disorder" link
    Then I should see "Order and Disorder" page







