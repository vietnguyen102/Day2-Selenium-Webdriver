require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get "https://www.google.com"
driver.manage.window.maximize
driver.find_element(:name, 'q').send_keys('ITMS Coaching')
driver.find_element(:name, 'q').send_keys(:enter)
sleep 2
puts driver.title 
driver.quit