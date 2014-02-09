Feature: New user creation and edition

Scenario:
	When I log in to Portal as user with permissions to Requisitions module
	And Then navigate through Dashboard to User Setups
	And Create new user
	Then This user should be created
	When I click on Back to list button
	And Select some random user
	And Change it's first name
	Then This user first name should be changed