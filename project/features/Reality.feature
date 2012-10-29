
Feature: Testing Entertainment Reality web page

  Scenario: Opening page  Opening page and check elements

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Reality/content/default/promoPage.do" page
    Then I should see "Reality" on the page
    Then I should see 15 Reality Teasers on the page
    Then I want to get array of movie names for Reality and check if it contains "Lifeline"
    Then I should see "Order and Disorder" content presented in Reality
    Then I should see image for "Claimed and Shamed" content in Reality







