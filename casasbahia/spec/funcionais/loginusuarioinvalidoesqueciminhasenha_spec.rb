require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "LoginusuarioinvalidoesqueciminhasenhaSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.casasbahia.com.br/"
    @driver.manage.timeouts.implicit_wait = 30
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_loginusuarioinvalidoesqueciminhasenha_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "lnkCadastreSe").click
    @driver.find_element(:id, "Email").clear
    @driver.find_element(:id, "Email").send_keys "elaine@teste.com.br"
    sleep 05
    @driver.find_element(:id, "lnkEsqueciSenha").click
    # ERROR: Caught exception [ERROR: Unsupported command [selectFrame | TB_iframeContent478 | ]]
    @driver.find_element(:id, "btnFecharModalEsqueciSenha").click
  end
end
