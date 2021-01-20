Feature: User can manually add book
Scenario: Add a book
 Given I am on the MyFavouriteBooks home page
 When I follow "Add new book"
 Then I should be on the Create New Book page
 When I fill in "Title" with "The Da Vinci Code"
 And I fill in "ISBN Number" with "123-TTT-321"
 And I select "Action and Adventure" from "Genre"
 And I press "Save Changes"
 Then I should be on the MyFavouriteBooks home page
 And I should see "The Da Vinci Code"
