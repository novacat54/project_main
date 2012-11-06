
Feature: TC1046 Documentaries Crime

  Scenario: Checking Documentaries Crime content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/Crime/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 14 teasers in List Row on the page
    Then List Row should contain "Robert Mone" movie
    Then I should see "The Wolf Man" content present in List Row
    Then I should see image for "Nightmare In Suburbia" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV"