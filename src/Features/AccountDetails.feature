Feature: Viewing account details
	This feature deals with the functionality of viewing account details

	Background: Given that the user is arleady registered to the application

	Scenario: Viewing account details as an authenticated user
		Given I am authenticated to the application 
		And I navigate to account details
		Then I can see account name, surname, email adress and mailing adress

	Scenario: Viewing account details as an unauthenticated user
		Given I am an unauthenticated to the application 
		And I navigate to account details
		Then I can not see content of the page
	
