Feature: TC1028 Sports - Cricket

  Scenario: Checking Sports Cricket Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Cricket/content/default/promoPage.do" page

    Then I should see "Top Downloads Row" on the page
    Then 1 Top Downloads Row should be presented on page
    Then 1 Top Downloads Row should include 4 teasers
    Then Top Downloads Row should contain "Sri Lanka v Pakistan" movie
    Then I should see "Canada v Zimbabwe" content present in Top Downloads Row
    Then I should see image for "New Zealand v Zimbabwe" movie in Top Downloads Row

    Then I should see "Generic Promo Row" on the page
    Then 3 Generic Promo Row should be presented on page
    Then 3 Generic Promo Row should include 4 teasers
    Then Generic Promo Row should contain "Canada v Pakistan" movie
    Then I should see "New Zealand v Zimbabwe" content present in Generic Promo Row
    Then I should see image for "Canada v Zimbabwe" movie in Generic Promo Row
