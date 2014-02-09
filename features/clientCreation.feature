Feature: New client profile creation
Scenario:
	When I log in to Portal as user with permissions to Requisitions module
	And Then navigate through Dashboard to Client Profile
	And Create new client profile
	Then This profile should be created
	
	