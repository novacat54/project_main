
Feature: Testing open web page

  Scenario: Opening page

    Given opened "http://sky.com" page
    Then I should see "My Sky" link
    When I should see "Comedy" image on the page
    When I click "My Sky" link
    Then I should see "Welcome to My Sky" page






