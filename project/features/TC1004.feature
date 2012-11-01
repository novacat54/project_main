
Feature: TC1004 Series Selection Row

  Scenario: Checking Series Selection Row content

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/RegressionPack_Series_Selection_Row_%28DO_NOT_TOUCH!%29/content/default/promoPage.do" page
    Then I should see "Series Selection Row" on the page
    Then I should see 7 teasers in Series Row on the page
    Then Series Selection Row should contain "Sel Disney Jr Series2" movie
    Then I should see "Sel Cartoon Network Series1" content present in Series Selection Row
    Then I should see image for "Sel Cartoonito Series1" movie in Series Selection Row
    When I click "Jungle Bunnies" link
    Then I should see "Jungle Bunnies" page



