Feature: TC1030 Sports - Darts

  Scenario: Checking Sports Darts Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Darts/content/default/promoPage.do" page

    Then I should see "Top Downloads Row" on the page
    Then 1 Top Downloads Row should be presented on page
    Then 1 Top Downloads Row should include 4 teasers
    Then Top Downloads Row should contain "Taylor v Wade" movie
    Then I should see "Lewis v Jenkins" content present in Top Downloads Row
    Then I should see image for "Game 1" movie in Top Downloads Row

    Then I should see "Generic Promo Row" on the page
    Then 2 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 2 teasers
    Then Generic Promo Row should contain "Lewis v Jenkins" movie
    Then I should see "Taylor v Wade" content present in Generic Promo Row
    Then I should see image for "Taylor v Wade" movie in Generic Promo Row
