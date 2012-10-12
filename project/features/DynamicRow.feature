
Feature: Testing open web page

  Scenario: Opening page

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/RegressionPack_Dynamic_Row_%28DO_NOT_TOUCH%21%29/content/default/promoPage.do" page
     Then I should see "Dynamic Row" content title on the page
     Then I should see 12 "Video" on the page
     Then I should see "24/24 Rule" link on the page
     Then I should see image of "24/24 Rule" title on the page






