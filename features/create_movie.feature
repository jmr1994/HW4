Feature: search for movies by director

  As a movie buff
  So that I can find movies with my favorite director
  I want to include and serach on director information in movies I enter
  Background: movies in database
    Given the following movies exist:
      | title        | rating | director     | release_date |
      | Star Wars    | PG     | George Lucas |   1977-05-25 |
      | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
      | Alien        | R      |              |   1979-05-25 |
      | THX-1138     | R      | George Lucas |   1971-03-11 |

  Scenario: creat a new movie
    Given I am on the home page
    When I follow "Add new movie"
    Then I fill in "Title" with "Logan"
    And I select "PG" from "Rating"
    And I select "2017" from "movie_release_date_1i"
    And I select "March" from "movie_release_date_2i"
    And I select "4" from "movie_release_date_3i"
    And I press "Save Changes"
    Then I should see "Logan was successfully created."
    And I should see "PG"
    And I should see "2017-03-04"

