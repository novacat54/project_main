Feature: TC1052 Kids Activities

  Scenario: Checking Kids Activities content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Activities/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 6 teasers in List Row on the page
    Then List Row should contain "Activities" movie
    Then I should see "First Concepts" content present in List Row
    Then I should see image for "Guessing Games" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV"