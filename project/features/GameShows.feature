Feature: Entertainment Game Shows

  Scenario: Opening page and check elements

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Game_Shows/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 10 teasers in List Row on the page
    Then I want to get movie names for List Row and check if it contains "Cuckoo"
    Then I should see "London on Film" content present in List Row
    Then I should see image for "Me and Mrs Jones" content in List Row
    When I click "Great Movie Mistakes: Cutdowns" link
    Then I should see "Great Movie Mistakes: Cutdowns" page
