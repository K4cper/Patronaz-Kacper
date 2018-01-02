Feature: User Autenthication
	This feature deals with the login functionality of the application

	Background: Given that the user is arleady registered to the application

	Scenario: Login with correct username and password
		Given I navigate to the login page
		And I enter the correct email and correct password
		And I clock login button
		Then I should see account details

	Scenario: Login with invalid email adress 
		Given I navigate to the login page
		And I enter invalid email
		And I click login button
		Then I should see a validation message for invalid email

	Scenario: Login with email adress that contains more than 60 characters
		Given I navigate to the login page
		And I enter email with over 60 characters 
		And I click login button
		Then I should see a validation message for email with over 60 characters

	Scenario: Login with incorrect login
		Given I navigate to the login page
		And I enter incorrect email 
		And I click login button
		Then I should see an error message for incorrect login, password or unregistered user

	Scenario: Login with incorrect password
		Given I navigate to the login page
		And I enter correct email 
		And incorrect password 
		And I click login button
		Then I should see an error message for incorrect login, password or unregistered user

	
