require "json"
require "selenium-webdriver"
require "rspec"
require "metodos"
include RSpec::Expectations

describe "LoginusuarioinvalidoSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.casasbahia.com.br/"
    @driver.manage.timeouts.implicit_wait = 30
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_loginusuarioinvalido_spec" do
    @metodos.abrir_site
    @metodos.selecionar_link
    @driver.find_element(:id, "lnkCadastreSe").click
    @driver.find_element(:id, "Email").clear
    @driver.find_element(:id, "Email").send_keys "elaine@teste.com.br"
    sleep 05
    @driver.find_element(:id, "Senha").clear
    @driver.find_element(:id, "Senha").send_keys "123456"
    sleep 05
    @driver.find_element(:id, "btnClienteLogin").click
    sleep 10
  end
end
