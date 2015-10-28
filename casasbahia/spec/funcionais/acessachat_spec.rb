require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "AcessachatSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.casasbahia.com.br/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_acessachat_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:css, "span.tx > span").click
    @driver.find_element(:id, "chatll").click
#    @driver.find_element(:xpath, "/html/body/div[2]/div/div[4]/div/div/div/div[1]/a[2]/img[2]").click
#    @driver.find_element(:css, "div#rn_Container div#rn_Body div#rn_SideBar div.rn_Padding div#side_bar_extra div div.side_bar_extra_item a img#chat11").click
#/html/body/div[2]/div/div[4]/div/div/div/div[1]/a[2]/img[2]


#
#    @driver.find_element(:id, "chat11").click
    sleep 10
  end
end
