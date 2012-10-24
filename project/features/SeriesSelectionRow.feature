
Feature: Testing Series Selection Row

  Scenario: Opening page, and trying to find the elements

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYKIDS/Browse_by_Genre/RegressionPack_Series_Selection_Row_%28DO_NOT_TOUCH!%29/content/default/promoPage.do" page
    Then I should see "Series Selection Row" on the page
    Then I should see 7 Series Row on the page
    Then I want to get array of movie names for Series Selection Row and check if it contains "Sel Disney Jr Series2"
    Then I should see "Sel Cartoon Network Series1" content presented in Series Selection Row
    Then I should see image for "Sel Cartoon Network Series1" content in Series Selection Row
    When I click "Jungle Bunnies" link
    Then I should see "Jungle Bunnies" page



