
Feature: Testing open web page

  Scenario: Opening page

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/RegressionPack_Dynamic_Row_%28DO_NOT_TOUCH%21%29/content/default/promoPage.do" page
     Then I should see "Dynamic Row" on the page
     Then I should see 12 "Video" on the page
     Then I want to get all content names for "Dynamic Row"
     Then I should see "24/24 Rule" title presented in "Dynamic" row
     Then I should see image for "24/24 Rule" content in "Dynamic" row







