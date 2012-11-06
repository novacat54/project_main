Feature: TC1054 Kids - Animation

  Scenario: Checking Kids Animation content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Animation/content/default/promoPage.do" page

    Then I should see "List Row" on the page
    Then I should see 1 teasers in List Row on the page
    Then List Row should contain "Bedtime : Going to Sleep with Tulli and Friends" movie
    Then I should see "Bedtime : Going to Sleep with Tulli and Friends" content present in List Row
    Then I should see image for "Bedtime : Going to Sleep with Tulli and Friends" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription."