Feature: TC1059 Kids Teen

  Scenario: Checking Kids Teen content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Teen/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 10 teasers in List Row on the page
    Then List Row should contain "Abadas : Icicle" movie
    Then I should see "Alphablocks: Series 2 : Taps" content present in List Row
    Then I should see image for "Newsround : 05/11/2012" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Sky TV and Sky Player TV"
