
Feature: TC1007 Entertainment Game Shows

  Scenario: Checking Game Shows content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/Game_Shows/content/default/promoPage.do" page
    Then I should see "List Row" on the page
    Then I should see 12 teasers in List Row on the page
    Then List Row should contain "Cuckoo" movie
    Then I should see "Some Girls" content present in List Row
    Then I should see image for "Me and Mrs Jones" movie in List Row
    When I click "Great Movie Mistakes: Cutdowns" link
    Then I should see "Great Movie Mistakes: Cutdowns" page
