When(/^When I log in to Portal as user with permissions to Requisitions module$/) do
  on(HomePage).log_in
  @current_page.select_location
end
Then(/^I should see SCC Dashboard with Requisitions module on it$/) do
  @home.reqLink_element.wait_until_present
end