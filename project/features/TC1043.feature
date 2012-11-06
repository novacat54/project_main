Feature: TC1043 News - Factual

  Scenario: Checking News Factual content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYNEWS/Browse_by_Genre/Factual/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 11 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Pakistan: Terror's Frontline : The Next Big Threat" movie


    Then I should see "List Row" on the page
    Then I should see 1 teasers in List Row on the page
    Then List Row should contain "Pakistan: Terror's Frontline" movie

