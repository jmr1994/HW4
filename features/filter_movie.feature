Feature: filter movies by their ratings

  As a movie fan
  So that I can filter the movies by their ratings
  I want to search my favourite ratings

  Background: movies in database
    Given the following movies exist:
      | title        | rating | director     | release_date |
      | Star Wars    | PG     | George Lucas |   1977-05-25 |
      | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
      | Alien        | R      |              |   1979-05-25 |
      | THX-1138     | R      | George Lucas |   1971-03-11 |

  Scenario: filter the movies
    Given I am on the home page
    When I check "ratings_PG"
    And I uncheck "ratings_R"
    And I press "Refresh"
    Then I should see "Star Wars"
    And I should see "Blade Runner"
    And I should not see "Alien"
    And I should not see "THX-1138"
