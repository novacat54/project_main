
Feature: TC1032 Sports - Athletics

  Scenario: Checking Sports Athletics Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Athletics/content/default/promoPage.do" page

    Then I should see "Series Selection Row" on the page
    Then 1 Series Selection Row should be presented on page
    Then 1 Series Selection Row should include 10 teasers
    Then Series Selection Row should contain "African Odyssey" movie
    Then I should see "Football Rivalries: Slavia Prague v Sparta Prague" content present in Series Selection Row
    Then I should see image for "Rugby World Cup Winners 1999" movie in Series Selection Row

    Then I should see "Generic Promo Row" on the page
    Then 1 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 1 teasers
    Then Generic Promo Row should contain "British Boxing Heroes: Stracey v Lewis" movie
    Then I should see "British Boxing Heroes: Stracey v Lewis" content present in Generic Promo Row
    Then I should see image for "British Boxing Heroes: Stracey v Lewis" movie in Generic Promo Row

