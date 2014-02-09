And(/^Then navigate through Dashboard to User Setups$/) do
  on(PortalDashboard).choose_user_setups
end
And(/^Create new user$/) do 
 on(UserSetups).create_new_user
end
Then(/^This user should be created$/) do
  @current_page.check_for_created_user
end
When(/^I click on Back to list button$/) do
  @current_page.back_to_list
end
And(/^Select some random user$/) do
	@current_page.select_random_user
end
And(/^Change it's first name$/) do
  @current_page.change_first_name
end
Then(/^This user first name should be changed$/) do
  @curreent_page.check_first_name
end