
Feature: Testing open web page

  Scenario: Opening page

    Given opened "http://sky.com" page
    Then I should see "My Sky" link
    When I click "My Sky" link
    Then I should see "Welcome to My Sky" page
    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYMOVIES/content/videoId/cf5f8d1dc26b9210VgnVCM1000002c04170a________/content/default/videoDetailsPage.do" page
    Then I should see image "I Love You Phillip Morris" title on page






