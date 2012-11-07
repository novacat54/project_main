
Feature: TC1029 Sports Boxing

  Scenario: Checking Sports Boxing content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYSPORTS/Browse_by_Genre/Boxing/content/default/promoPage.do" page
    Then I should see "Generic Promo Row" on the page
    Then 1 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 4 teasers
    Then Generic Promo Row should contain "Vassell v Ushona" movie
    Then I should see "Klitschko v Solis" content present in Generic Promo Row
    Then I should see image for "Tony Dodson v Michael Banbula" movie in Generic Promo Row

    Then I should see "Series Selection Row" on the page
    Then I should see 4 teasers in Series Row on the page
    Then Series Selection Row should contain "Vassell v Ushona" movie
    Then I should see "Tony Dodson v Michael Banbula" content present in Series Selection Row
    Then I should see image for "Joe Smyth v Menay Edwards" movie in Series Selection Row

    Then I should see "List Row" on the page
    Then I should see 2 teasers in List Row on the page
    Then List Row should contain "British Boxing Heroes: Stracey v Lewis" movie
    Then I should see "British Boxing Heroes: Richie Woodhall" content present in List Row
    Then I should see image for "British Boxing Heroes: Stracey v Lewis" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Free* for Sky TV and Sky Player TV customers"