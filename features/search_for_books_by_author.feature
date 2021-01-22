Feature: search for books by author
 
  As a book buff
  So that I can find books with my favorite author
  I want to include and serach on author information in books I enter
 
Background: books in database
 
  Given the following books exist:  
  | title        | genre                    | author       | publish_date | isbn        |
  | Star Wars    | Science Fiction          | George Lucas |   1977-05-25 | 126-AWF-879 |
  | Blade Runner | Science Fiction          | Ridley Scott |   1982-06-25 | 123-APF-879 |
  | Alien        | Action and Adventure     |              |   1979-05-25 | 123-AHF-879 |
  | THX-1138     | Action and Adventure     | George Lucas |   1971-03-11 | 123-AWF-898 |
 
Scenario: add author to existing book
  When I go to the edit page for "Alien"
  And  I fill in "Author" with "Ridley Scott"
  And  I press "Update Book Info"
  Then the author of "Alien" should be "Ridley Scott"
 
Scenario: find book with same author
  Given I am on the details page for "Star Wars"
  When  I follow "Find Books With Same Author"
  Then  I should be on the Similar Books page for "Star Wars"
  And   I should see "THX-1138"
  But   I should not see "Blade Runner"
 
Scenario: can't find similar books if we don't know author (sad path)
  Given I am on the details page for "Alien"
  Then  I should not see "Ridley Scott"
  When  I follow "Find Books With Same Author"
  Then  I should be on the home page
  And   I should see "'Alien' has no author info"