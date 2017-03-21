Feature: sort movies by their title and release_date

  As a movie fan
  So that I can find movies alphabetically
  I want to search for movies by their realease_date

  Background: movies in database

    Given the following movies exist:
      | title        | rating | director     | release_date |
      | Star Wars    | PG     | George Lucas |   1977-05-25 |
      | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
      | Alien        | R      |              |   1979-05-25 |
      | THX-1138     | R      | George Lucas |   1971-03-11 |

  Scenario: sort movies by movies title
    Given I am on the home page
    When I follow "Movie Title"
    Then I should see "Star Wars" before "THX-1138"
    And I should see "Alien" before "Blade Runner"

  Scenario: sort movies by release_date
    Given I am on the home page
    When I follow "Release Date"
    Then I should see "THX-1138" before "Star Wars"
    And I should see "Alien" before "Blade Runner"