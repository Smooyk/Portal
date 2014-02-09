  
When(/^I access Requisition module and create new requisition$/) do
  on(HomePage).select_requisition_module
  @current_page.create_new_requisition
  on(ReqEntry).fill_in_requisition_and_release(@browser)
end

Then(/^I should see an released reuiqisition$/) do
  @current_page.check_for_released_requisition
end
