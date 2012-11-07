Feature: TC1045 Documentaries - Homepage

  Scenario: Checking Documentaries Homepage content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYDOCUMENTARIES/Browse_by_Genre/Documentaries/content/default/promoPage.do" page
    Then I should see "Hero Row T1" on the page
    Then I should see 15 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "Britain's Nazi King" movie
    Then I should see "The Real NCIS" content present in Hero Row T1

    Then I should see "List Row" on the page
    Then I should see 16 teasers in List Row on the page
    Then List Row should contain "LA Cops : Ep 1 Partners and Crime" movie
    Then I should see "LA Cops : Ep 1 Partners and Crime" content present in List Row
    Then I should see image for "The Real NCIS : Ep 4 Wiltrout: Three of A Kind" movie in List Row

    Then I should see "Generic Promo Row" on the page
    Then 1 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 4 teasers
    Then Generic Promo Row should contain "Unnatural Histories" movie
    Then I should see "Robbed, Raided, Reunited" content present in Generic Promo Row
    Then I should see image for "Homes Under the Hammer: Series 14" movie in Generic Promo Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV or Sky Go Monthly"