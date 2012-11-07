Feature: TC1050 Documentaries - Society & Civilization

  Scenario: Checking Documentaries  Society & Civilization content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/Society_and_Civilisation/content/default/promoPage.do" page

    Then I should see "List Row" on the page
    Then I should see 23 teasers in List Row on the page
    Then List Row should contain "Bedlam" movie
    Then I should see "Daily Politics" content present in List Row
    Then I should see image for "Death Of A Royal" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."