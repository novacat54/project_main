
Feature: TC1022 Movies - Crime and Thriller

  Scenario: Checking Movies Crime and Thriller Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Crime_and_Thriller/content/default/promoPage.do" page

    Then I should see "Hero Row T1" on the page
    Then I should see 8 teasers in Hero Row T1 on the page
    Then Hero Row T1 should contain "The Oxford Murders" movie
    Then I should see "Anamorph" content present in Hero Row T1
    Then I should see image for "Armored" movie in Hero Row T1

    Then I should see "Top Downloads Row" on the page
    Then 2 Top Downloads Row should be presented on page
    Then 2 Top Downloads Row should include 5 teasers
    Then Top Downloads Row should contain "The Oxford Murders" movie
    Then I should see "Anything For Her" content present in Top Downloads Row
    Then I should see image for "Surveillance" movie in Top Downloads Row

    Then I should see "Generic Promo Row" on the page
    Then 17 Generic Promo Row should be presented on page
    Then 4 Generic Promo Row should include 3 teasers
    Then Generic Promo Row should contain "Adam" movie
    Then I should see "Aliens in the Attic" content present in Generic Promo Row
    Then I should see image for "Middle Men" movie in Generic Promo Row

    Then I should see "List Row" on the page
    Then I should see 2 teasers in List Row on the page
    Then List Row should contain "Killing Bono" movie
    Then I should see "Alice in Wonderland" content present in List Row
    Then I should see image for "Killing Bono" movie in List Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Included as part of the relevant Sky TV"