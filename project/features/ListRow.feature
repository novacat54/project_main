Feature: ListRow
  Scenario: open web site and check List row

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/RegressionPack_List_Row_%28DO_NOT_TOUCH!%29/content/default/promoPage.do" page
    #When I click "On Demand" link
    #Then I should see "Showcase" page
    #When I click "Entertainment" link
    #When I click "RegressionPack List Row (DO NOT TOUCH!)" link
    Then I should see "List Row" on the page
    Then I should see 4 Videos on the page
    Then I want to get all content names for List Row
    Then I should see "REG-Sri Lanka v Pakistan" content presented in List Row
    Then I should see image for "REG-Sri Lanka v Pakistan" content in List Row

