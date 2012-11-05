
Feature: TC1016 Movies - Family

  Scenario: Checking Movies Family Content

    Given opened "http://go.t1.sp.bskyb.com/vod/content/SKYMOVIES/Browse_by_Genre/Family/content/default/promoPage.do" page

    Then I should see 7 Hero Row on the page
    Then I should see the following tabs titles on the Hero Row:
      | Highlights  |
      | Watch Live  |
    Then I should see scroll buttons for the Hero Row:
      |Scroll left  |
      |Scroll right |
    Then I should see view more content present on the Hero Row:
      |Bolt                           |
      |Coraline                       |

    Then I should see "Generic Promo Row" on the page
    Then 18 Generic Promo Row should be presented on page
    Then 1 Generic Promo Row should include 2 teasers
    Then Generic Promo Row should contain "Tomorrow Never Dies" movie
    Then I should see "GoldenEye" content present in Generic Promo Row
    Then I should see image for "Thunderball" movie in Generic Promo Row

    Then I should see "List Row" on the page
    Then I should see 9 teasers in List Row on the page
    Then List Row should contain "Celebrating the Goal" movie
    Then I should see "Saturday Story - 1974-75" content present in List Row
    Then I should see image for "Tomorrow Never Dies" movie in List Row

    Then I should see "Top Downloads Row" on the page
    Then 2 Top Downloads Row should be presented on page
    Then 2 Top Downloads Row should include 4 teasers
    Then Top Downloads Row should contain "Alice in Wonderland" movie
    Then I should see "Aliens in the Attic" content present in Top Downloads Row
    Then I should see image for "Coraline" movie in Top Downloads Row

    Then I should see "Copy Row" on the page
    Then Copy Row should include text "Free for Sky TV and Sky Player TV"