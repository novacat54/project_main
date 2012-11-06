Feature: TC1047 Documentaries - Engineering

  Scenario: Checking Documentaries Engineering content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/Engineering/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 19 teasers in List Row on the page
    Then List Row should contain "Sunday Politics North West" movie
    Then I should see "Sunday Politics Yorkshire and Lincolnshire" content present in List Row
    Then I should see image for "Death Of A Royal" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly"