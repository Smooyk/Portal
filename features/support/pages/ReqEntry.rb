class ReqEntryPage
	include PageObject
	in_frame(:id=>"iframeorderTab1") do |frame|
		text_field(:lastName,:name=>"lastName-inputEl",:frame => frame)
		text_field(:firstName,:name=>"firstName-inputEl",:frame=>frame)
		text_field(:middleName,:name=>"middleName-inputEl",:frame=>frame)
		text_field(:sex,:name=>"sex-inputEl",:frame=>frame)
		text_field(:attDr,:id=>"attDr-inputEl",:frame=>frame)
		text_field(:reqDr,:id=>"reqDr-inputEl",:frame=>frame)
		text_field(:priority,:id=>"priority-inputEl",:frame=>frame)
		div(:specimenType,:xpath=>".//*[@id='orderSpecimenGrid-body']/div/table/tbody/tr/td/div",:frame=>frame)
		div(:specimenType_lookup,:xpath=>".//*[@id='orderSpecimenGrid']/div[4]/table/tbody/tr/td[2]/table/tbody/tr/td[3]/div",:frame=>frame)
		div(:testType,:xpath=>".//*[@id='requestedTestsPanel-body']//tbody/tr/td/div",:frame=>frame)
		span(:releaseReq,:text=>"Release",:frame=>frame)
		text_field(:releaseStatus,:id=>"releaseStatus-inputEl",:text=>"RELEASED",:frame=>frame)
		text_field(:requisitionNumber,:id=>"requsition-inputEl")
	end
	
	public 
	def FindFrame(brow)
		brow.span(:class=>"x-tab-inner x-tab-inner-center",:index=>1).wait_until_present
        	brow.span(:class=>"x-tab-inner x-tab-inner-center",:index=>1).flash.click
		brow.frame(:id=>"iframeorderTab1").wait_until_present
		@newFrame= brow.frame(:id=>"iframeorderTab1")
		puts "find!"  
	end
	def SpecimenRow(brow)
		row = specimen.first_row()
		puts "Gave a row"
	end
	def fill_in_requisition_and_release(browser)
    self.lastName_element.wait_until_present
  self.lastName="Test"
  self.firstName="First"
  self.middleName="Muriel"
  self.sex="Male"
  self.attDr_element.click
  sleep 2
  browser.send_keys :down
  sleep 1
  browser.send_keys :down
  browser.send_keys :enter
  sleep 1
  self.reqDr_element.click
  sleep 2
  browser.send_keys :down
  sleep 1
  browser.send_keys :down
  browser.send_keys :enter
  sleep 1
  self.priority="Stat"
  self.window.maximize
  sleep 1
  self.specimenType_element.click
  sleep 2
  browser.send_keys :down
  sleep 2
  browser.send_keys :down
  sleep 1
  browser.send_keys :enter
  sleep 2
  self.specimenType_element.click
  3.times do
  browser.send_keys :tab
  end
  sleep 1
  browser.send_keys :down
  sleep 2
  browser.send_keys :down
  browser.send_keys :enter
  sleep 1
  self.testType_element.click
  sleep 2
  browser.send_keys :down
  sleep 2
  browser.send_keys :down
  sleep 1
  browser.send_keys :enter
  sleep 1
  self.releaseReq_element.click
	end
	def check_for_released_requisition
	   self.releaseStatus.wait_until_present
	   puts "Requisition was released! Number is - #{self.requisitionNumber}"
	end
	
	
end

