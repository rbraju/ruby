require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

# Search for mens jeans
Given(/^The user navigates to Macys home page$/) do
    driver.navigate.to "https://www.macys.com"
end

When (/^The user search for the word mens jeans$/) do
    driver.find_element(:id, 'globalSearchInputField').send_keys("mens jeans")
    driver.find_element(:id, 'searchSubmit').click()
end

Then(/^The results for mens jeans is more than zero$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    begin
        element = wait.until {driver.find_element(:id, 'productCount')}
    end
end

# Search for women jeans
When (/^The user search for the word women jeans$/) do
    driver.find_element(:id, 'globalSearchInputField').send_keys("women jeans")
    driver.find_element(:id, 'searchSubmit').click()
end

Then(/^The results for women jeans is more than zero$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    begin
        element = wait.until {driver.find_element(:id, 'productCount')}
    ensure
        driver.quit
    end
end
