Feature: HeroRow

  Scenario: Checking HeroRow content

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYNEWS/content/default/promoPage.do" page

    Then I should see 8 "Video" on the page

  #    'button tab title' is a simple tab
  #    more correct step is: Then I should see "Showcase" tab on the Hero Row
  #    but use next step: Then I should see next tabs for Hero Row:
  #      | Showcase    |
  #      | Watch Live  |
  #      | Last Chance |
    Then I should see "Last Chance" button tab title on the Hero Row
    Then I should see "Showcase" button tab title on the Hero Row
    Then I should see "Watch Live" button tab title on the Hero Row

    # using Hero Row or HeroRow - choose something one

    # Scroll left/right are buttons:
    # Then I should see "Scroll left" button on the HeroRow
    Then I should see "Scroll left" on the HeroRow

    Then I should see "Scroll right" on the HeroRow
    Then I should see "View more Panorama" content presented in HeroRow







