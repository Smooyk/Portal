Feature: New client creation

Scenario:
	When I log in to Portal as user with permissions to Requisitions module
	And Then navigate through Dashboard to Requisitions Template
	And Create new template
	Then This template should be created