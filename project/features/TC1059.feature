Feature: TC1059 Kids Teen

  Scenario: Checking Kids Teen content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Teen/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 10 teasers in List Row on the page
    Then List Row should contain "Abadas : Cloud" movie
    Then I should see "Alphablocks: Series 2 : In" content present in List Row
    Then I should see image for "Newsround : Decision Time USA" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Sky TV and Sky Player TV"
