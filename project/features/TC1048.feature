Feature: TC1048 Documentaries History

  Scenario: Checking Documentaries History content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/History/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 22 teasers in List Row on the page
    Then List Row should contain "LA Cops" movie
    Then I should see "Question Time" content present in List Row
    Then I should see image for "Bedlam" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV"