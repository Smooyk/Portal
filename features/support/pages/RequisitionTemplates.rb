class RequisitionTemplates
	include PageObject
	in_frame(:id=>"iframeTemplateSetup") do |frame|
		span(:newTemplate,:text=>"New Template",:frame=>frame)
		text_field(:templateCode,:name=>"Code",:frame=>frame)
		text_field(:templateName,:name=>"Name",:frame=>frame)
		span(:saveTemplate,:text=>"Save",:frame=>frame)
	end
	def create_new_template
  	sleep 10
    self.newTemplate_element.wait_until_present
    self.newTemplate_element.click
    sleep 1
    self.newTemplate_element.click
    self.templateCode_element.wait_until_present
    self.templateCode = "SomeCode"
    self.templateName = "SomeName"
    self.saveTemplate_element.click
	end
	def check_created_template
	 puts "Template is created and it's code - #{self.templateCode}" 
	end
	
end

