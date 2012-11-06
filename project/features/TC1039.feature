
Feature: TC1039 News Current Affairs

  Scenario: Checking News Current Affairs content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYNEWS/Browse_by_Genre/Current_Affairs/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 13 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "HARDtalk : Hilde Johnson" movie
    Then I should see "Reporters : 04/11/2012" content present in Hero Row T1
    Then I should see image for "HARDtalk : Grover Norquist" movie in Hero Row T1

    Then I should see "List Row" on the page
    Then I should see 7 teasers in List Row on the page
    Then List Row should contain "BBC World News" movie
    Then I should see "Sky World News" content present in List Row
    Then I should see image for "World News Today" movie in List Row
