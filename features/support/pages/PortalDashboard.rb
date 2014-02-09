class PortalDashboard
	include PageObject
	a(:clientProfile, :text=>"Client Profile")
	a(:requisitionTemplates,:text=>"Requisition Templates")
	a(:userSetups,:text=>"User Setups")
	def choose_client_profile
	  self.clientProfile_element.wait_until_present
	  self.clientProfile_element.click
	end
	def choose_requisiotion_templates
	  self.requisitionTemplates_element.wait_until_present
	  self.requisitionTemplates_element.click
	end
	def choose_user_setups
    self.userSetups_element.wait_until_present
    self.userSetups_element.click
  end
end
