Feature: TC1049 Documentaries - Science & Nature

  Scenario: Checking Documentaries Science & Nature content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/Science_and_Nature/content/default/promoPage.do" page

    Then I should see "List Row" on the page
    Then I should see 15 teasers in List Row on the page
    Then List Row should contain "Autumnwatch Unsprung: 2012" movie
    Then I should see "Human Planet" content present in List Row
    Then I should see image for "Nightmare In Suburbia" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."