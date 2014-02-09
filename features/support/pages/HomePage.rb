class HomePage
	include PageObject
	include DataMagic
	page_url = "http://geneportal02.isd.dp.ua/GenePortal_zt40"
	link(:Dashboard,:text => "/^LIS$/")
	text_field(:username,:id=> "username-email")
	text_field(:password,:id=>"password")
	button(:signIn,:id=>"signInButton")
	div(:login,:id => "logon")
	button(:showLocs,:title=>"Show All Items")
	span(:myClinic,:class => "code",:index=>2)
	button(:selectBtn,:text=>"Select")
 	div(:reqLink,:xpath=>".//*[@href='/Test/SCC/Requisitions']/div/div[@class='bottom']")
	a(:portalDashboard,:text=>"Dashboard")
	span(:newReq,:text=>"New Requisition")
	def log_in(data={})
	  self.login_element.wait_until_present
	  populate_page_with data_for(:HomePage,data)
	  self.signIn_element.click
	end
	def select_location
	self.showLocs_element.wait_until_present
  self.showLocs_element.click
  self.myClinic_element.wait_until_present
  self.myClinic_element.click
	end
	def wait_for_requisition_module
	  self.reqLink_element.wait_until_present
	end
	def select_requisition_module
	  self.self.reqLink_element.wait_until_present
	  self.reqLink_element.click
	end
	def create_new_requisition
	  self.newReq_element.wait_until_present
	  self.newReq.click
	end
	def open_portal_dashboard
	  self.open_portal_dashboard
	end
	
end


