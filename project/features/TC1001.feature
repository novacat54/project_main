
Feature: TC1001 Dynamic Row

  Scenario: Checking Dynamic Row content

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/RegressionPack_Dynamic_Row_%28DO_NOT_TOUCH%21%29/content/default/promoPage.do" page
    Then I should see "Dynamic Row" on the page
    Then I should see 12 teasers in Dynamic Row on the page
    Then Dynamic Row should contain "24/24 Rule" movie
    Then I should see "Crimes That Shook Britain : Beverley Allitt" content present in Dynamic Row
    Then I should see image for "Crimes That Shook Britain : Beverley Allitt" movie in Dynamic Row







