class ClientProfile
	include PageObject
	in_frame(:id=>"sccsetupframe") do |frame|
	span(:newClinic,:text=>"New",:frame=>frame)
	text_field(:clinicCode,:name=>"Code",:frame=>frame)
	text_field(:clinicName,:name=>"Name",:frame=>frame)
	text_field(:collectionCenter,:name=>"CollectionCenter",:frame=>frame)
	span(:saveClinic,:text=>"Save",:frame=>frame)
	end
	def create_new_profile(browser)
  	self.newClinic_element.wait_until_present
    sleep 1
    self.newClinic_element.click
    self.clinicCode_element.wait_until_present
    self.clinicCode= "3333"
    self.clinicName= "SomeName"
    self.collectionCenter_element.click
    sleep 1
    browser.send_keys :down
    sleep 1
    browser.send_keys :down
    browser.send_keys :enter
    sleep 2
    self.saveClinic_element.click
    sleep 5
	end
	def check_for_client_profile_creation
	  puts "Clirnt profile was created. Code is - #{self.clinicCode}"
	end
end


