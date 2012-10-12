Feature: ListRow
  Scenario: open web site and check List row

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYENTERTAINMENT/Browse_by_Genre/RegressionPack_List_Row_%28DO_NOT_TOUCH!%29/content/default/promoPage.do" page
    #When I click "On Demand" link
    #Then I should see "Showcase" page
    #When I click "Entertainment" link
    #When I click "RegressionPack List Row (DO NOT TOUCH!)" link
    Then I should see "List Row" title on page
    Then I should see 4 "Videos" quantity on page
    Then I should see "REG-Sri Lanka v Pakistan" link on page
    Then I should see "REG-Sri Lanka v Pakistan" image on page
