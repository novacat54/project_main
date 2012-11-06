
Feature: TC1057 Kids Music

  Scenario: Checking Kids Music content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Music/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 4 teasers in List Row on the page
    Then List Row should contain "Bedtime" movie
    Then I should see "Music and Arts" content present in List Row
    Then I should see image for "Songs and Rhymes" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "*Included as part of the relevant Sky TV"