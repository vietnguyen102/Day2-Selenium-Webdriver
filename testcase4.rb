require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get "https://www.google.com"
driver.manage.window.maximize
puts driver.current_url
sleep 2 
driver.quit