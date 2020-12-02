require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get "https://itmscoaching.herokuapp.com/form"
driver.manage.window.maximize

driver.find_element(:id, 'first-name').send_keys('iTMS')
driver.find_element(:id, 'last-name').send_keys('Coaching')
driver.find_element(:id, 'job-title').send_keys('QA')
driver.find_element(:id, 'radio-button-2').click
driver.find_element(:id, 'checkbox-1').click

options = driver.find_element(:id, 'select-menu')
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "2-4")

driver.find_element(:id, 'datepicker').send_keys('27/10/2025')

driver.find_element(:link_text, 'Submit').click
sleep 2
driver.quit






