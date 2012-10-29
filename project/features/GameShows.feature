Feature: Testing Entertainment Game Shows web page

  Scenario: Opening page and check elements

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Game_Shows/content/default/promoPage.do" page
    Then I should see "Game Shows" on the page
    Then I should see 10 Game Shows Teasers on the page
    Then I want to get array of movie names for Game Shows and check if it contains "Cuckoo"
    Then I should see "London on Film" content presented in Game Shows
    Then I should see image for "Me and Mrs Jones" content in Game Shows