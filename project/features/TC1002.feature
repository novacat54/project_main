
Feature: TC1002 HeroRow

  Scenario: Checking HeroRow content

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYNEWS/content/default/promoPage.do" page

    Then I should see 24 Hero Row on the page
    Then I should see the following tabs titles on the Hero Row:
      | Showcase    |
      | Last Chance |
      | Watch Live  |
    Then I should see scroll buttons for the Hero Row:
      |Scroll left|
      |Scroll right|
    Then I should see view more content present on the Hero Row:
      |View more HARDtalk                       |
      |View more Click                          |
      |View more Sky World News                 |
      |View more Question Time                  |
      |View more Panorama                       |
      |View more Series-2012091245              |
      |View more Bolton &amp; Co-201209140903   |






