require "json"
require "selenium-webdriver"
require "rails_helper"
include RSpec::Expectations

describe "UntitledTestCase" do

  before(:each) do
    Selenium::WebDriver::Chrome.driver_path = 'C:\Users\metel\Desktop\chromedriver.exe'
    @driver = Selenium::WebDriver.for :chrome
    @accept_next_alert = true
    @verification_errors = []
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_untitled_test_case" do
    @driver.get "http://localhost:3000/"
    @driver.find_element(:id, "button").click
    @driver.close
  end
end
