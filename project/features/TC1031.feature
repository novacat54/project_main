Feature: TC1021 Sports Features

  Scenario: Checking Sports Features content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Features/content/default/promoPage.do" page
    Then I should see "Generic Promo Row" on the page
    Then 3 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 4 teasers
    Then Generic Promo Row should contain "Special Report - Tiger Woods" movie
    Then I should see "Celebrating the Goal" content present in Generic Promo Row
    Then I should see image for "Saturday Story - 1974-75" movie in Generic Promo Row