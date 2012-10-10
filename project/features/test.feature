
Feature: Testing open web page

  Scenario: Opening page

    Given opened "http://sky.com" page
    Then I should see "My Sky" link
    When I should see "Comedy" image on the page





