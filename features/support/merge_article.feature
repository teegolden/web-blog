Feature: Merge Articles

	As an Admin
	In order to merge two related articles
	I want to create a new article that merges the contents of both original articles


Background: articles have been added to the database

	Given the following article exists:
	| title                    | body                                             |
	| Tayo's First Blog!       | Tayo is making his first blog today. Yay!        |
	| Meghana's First Blog!    | Meghana is also making her first blog today. Yay!|


	Scenario: A non-admin cannot merge articles
		Given I am not logged into the admin panel
		And I am on the edit page of article "Tayo's First Blog!"
		Then I should not see "Merge Articles"

	Scenario: An admin can merge articles
		Given I am logged into the admin panel
		And I am on the edit page of article "Tayo's First Blog!"
		Then I should not see "Merge Articles"
	
	Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).
		Given I am on the edit page of article Tayo's First Blog!
		
		
		Given article "Meghana's First Blog!" exists
		


		When I fill in "Article ID" with "Meghana's First Blog!"
		


		When I press "Merge"
		



		Then I should see a new article with the contents of "Tayo's First Blog!" and "Meghana's First Blog!"


	




	Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article
		Given I am on a merged article page of articles "Tayo's First Blog!" and "Meghana's First Blog!"
		Then I should see the original comments of "Tayo's First Blog!" and "Meghana's First Blog!" on the page


	Scenario: The title of the new article should be the title from either one of the merged articles
		Given I am on a merged article page of articles "Tayo's First Blog!" and "Meghana's First Blog!"
		Then the title of the new article should be the title of "Tayo's First Blog!" or "Meghana's First Blog!"
