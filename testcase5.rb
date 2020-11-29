require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get "https://www.google.com"
driver.manage.window.maximize
puts driver.page_source
sleep 2 
driver.quit