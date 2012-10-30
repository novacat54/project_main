Feature: Entertainment Game Shows

  Scenario: Opening page and check elements

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Game_Shows/content/default/promoPage.do" page
    Then I should see "Game Shows" on the page
    Then I should see 10 teasers in List Row on the page
    Then I want to get array of movie names for Game Shows and check if it contains "Cuckoo"
    Then I should see "London on Film" content presented in List Row
    Then I should see image for "Me and Mrs Jones" content in List Row
    Then I should see "*Included as part of the relevant Sky TV or Sky Go Monthly Ticket subscription." on the page
    When I click "Great Movie Mistakes: Cutdowns" link
    Then I should see "Great Movie Mistakes: Cutdowns" page
