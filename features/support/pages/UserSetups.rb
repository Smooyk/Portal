class UserSetups
	include PageObject
	USERSELECTIONCONST = 5
	in_frame(:id=>"sccsetupframe") do |frame|
		span(:newUser,:text=>"New",:frame=>frame)
		span(:saveUser,:text=>"Save",:frame=>frame)
		span(:editUser,:text=>"Edit",:frame=>frame)
		span(:backToList,:text=>"Back to list",:frame=>frame)
		text_field(:securityID,:name=>"SecurityId",:frame=>frame)
		text_field(:password,:name=>"Password",:frame=>frame)
		text_field(:securityEmail,:name=>"SecurityEmail",:frame=>frame)
		text_field(:securityProvider,:name=>"SecurityProvider",:frame=>frame)
		text_field(:firstName,:name=>"FirstName",:frame=>frame)
		div(:randomUser,:xpath=>".//div[2]/div/table/tbody/tr[#{USERSELECTIONCONST}]/td[1]/div",:frame=>frame)
		
	end
	def create_new_user
  	self.newUser_element.wait_until_present
    self.newUser_element.click
    sleep 5
    self.securityID_element.click
    self.securityID="SomeID"
    self.password="admin123"
    self.securityEmail = "dfsfkj@i.ua"
    self.saveUser_element.click
    sleep 1
	end
	def check_for_created_user
	  puts "User was created. His securityID is - #{self.securityID}"
	end
	def back_to_list
  	self.backToList_element.click
	end
	def select_random_user
	  self.randomUser_element.wait_until_present
    self.randomUser_element.click
    self.editUser_element.click
    sleep 2
	end
	def change_first_name
	  self.firstName_element.wait_until_present
    self.firstName_element.click
    self.firstName="TestName"
    self.saveUser_element.click
	end
	def check_first_name
	  puts "User's first name was changed to #{self.firstName}"
	end
	
end

