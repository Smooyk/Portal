
And(/^Then navigate through Dashboard to Client Profile$/) do
  on(HomePage).open_portal_dashboard
  on(PortalDashboard).choose_client_profile
end

And(/^Create new client profile$/) do
  on(ClientProfile).create_new_profile(browser)
end

Then(/^This profile should be created$/) do
  @current_page.check_for_client_profile_creation
end


