Feature: Testing Entertainment homepage

  Scenario: Checking Entertainment home page content presence

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYENTERTAINMENT/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 20 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Stargate Universe Season 2" movie
#    Then I should see "Modern Family Season 2" content present in Hero Row T1
#    Then I should see image for "Stargate Universe Season 2" movie in Hero Row T1

    Then I should see "List Row" on the page
    Then I should see 16 teasers in List Row on the page
    Then List Row should contain "William's Love Life" movie
    Then I should see "House Season 7 : Ep 15 Bombshells" content present in List Row
    Then I should see image for "Modern Family Season 2 : Ep 15 Princess Party" movie in List Row

    Then I should see "Generic Promo Row" on the page
    Then I should see 4 teasers in Generic Promo Row on the page
    Then Generic Promo Row should contain "Lilyhammer" movie
    Then I should see "EastEnders" content present in Generic Promo Row
    Then I should see image for "EastEnders" movie in Generic Promo Row