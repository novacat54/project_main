Feature: TC1051 Kids - Homepage

  Scenario: Checking Kids Homepage content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/Kids/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 29 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Ben 10" movie
    Then I should see "Jake and the Never Land Pirates" content present in Hero Row T1

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "* Free for  Sky TV and Sky Player TV customers with the relevant Pack. See hover or video details for availability information."

    Then I should see "List Row" on the page
    Then I should see 14 teasers in List Row on the page
    Then List Row should contain "Dani's House: Series Four : One Small Step For Sam" movie
    Then I should see "Abadas : Icicle" content present in List Row
    Then I should see image for "The Rhyme Rocket : Music" movie in List Row