Feature: create urls

	As a user when I visit the main Shortener Side and I submit the form with a valid URL I should get back a shortend Link to the URL.
	
	Scenario: creating a shortend link
	When I visit the URL creation side
	And I fill into the URL field "dealush.com"
	And I submit the form
	Then I should get back following Link: "http://127.0.0.1:44470/8a21c " 