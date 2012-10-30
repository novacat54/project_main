Feature: Testing Entertainment homepage

  Scenario: Checking Entertainment home page content presence

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/content/default/promoPage.do" page
    When I should see "Hero Row T1" on the page
    Then I should see 7 teasers in Hero Row T1 on the page
    Then I want to get movie names for Hero Row T1 and check if it contains "Stargate Universe Season 2"
    Then I should see "Modern Family Season 2" content presented in Hero Row T1
    Then I should see image for "Stargate Universe Season 2" content in Hero Row T1
    When I should see "List Row" on the page
    Then I should see 16 teasers in List Row on the page
    Then I want to get movie names for List Row and check if it contains "Marisa Tomei"
    Then I should see "House Season 7 : Ep 15 Bombshells" content presented in List Row
    Then I should see image for "Modern Family Season 2 : Ep 15 Princess Party" content in List Row
    When I should see "Generic Promo Row" on the page
    Then I should see 4 teasers in Generic Promo Row on the page
    Then I want to get movie names for Generic Promo Row and check if it contains "New Tricks: Series 9"
    Then I should see "EastEnders" content presented in Generic Promo Row
    Then I should see image for "Casualty: Series 27" content in Generic Promo Row