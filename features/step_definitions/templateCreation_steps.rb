And(/^Then navigate through Dashboard to Requisitions Template/) do
  on(PortalDashboard).choose_requisiotion_templates
end
And(/^Create new template$/) 
	on(RequisitionTemplates).create_new_template
end
Then(/^This template should be created$/) do
  @current_page.check_created_template
end
