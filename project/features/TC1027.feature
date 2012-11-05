Feature: TC1027 Sports - Soccer AM

  Scenario: Checking Sports Soccer AM content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Soccer_AM/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 2 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Celebrating the Goal" movie
    Then I should see "Celebrating the Goal" content present in Hero Row T1

    Then I should see "Generic Promo Row" on the page
    Then 1 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 1 teasers
    Then Generic Promo Row should contain "Celebrating the Goal" movie
    Then I should see "Celebrating the Goal" content present in Generic Promo Row
    Then I should see image for "Celebrating the Goal" movie in Generic Promo Row

    Then I should see "List Row" on the page
    Then I should see 1 teasers in List Row on the page
    Then List Row should contain "Celebrating the Goal" movie
    Then I should see "Celebrating the Goal" content present in List Row
    Then I should see image for "Celebrating the Goal" movie in List Row