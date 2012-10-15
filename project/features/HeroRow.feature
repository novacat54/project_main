Feature: HeroRow

  Scenario: Checking HeroRow content

    Given opened "http://go.test.sp.bskyb.com/vod/content/SKYNEWS/content/default/promoPage.do" page
    Then I should see 8 "Video" on the page
    Then I should see "Last Chance" button tab title on the Hero Row
    Then I should see "Showcase" button tab title on the Hero Row
    Then I should see "Watch Live" button tab title on the Hero Row
    Then I should see "Scroll left" on the HeroRow
    Then I should see "Scroll right" on the HeroRow
    Then I should see "View more Panorama" content presented in HeroRow







