require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "MudardepaginaaposretornodabuscaSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.casasbahia.com.br/"
    @driver.manage.timeouts.implicit_wait = 30
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_mudardepaginaaposretornodabusca_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "sli_search_1").clear
    @driver.find_element(:id, "sli_search_1").send_keys "celular"
    @driver.find_element(:id, "ctl00_Conteudo_PaginaSistemaArea1_ctl12_btnOK").click
    sleep 10
    @driver.find_element(:xpath, "/html/body/form/div[4]/div[4]/div[2]/div/div[2]/div[1]/div[1]/div[2]/ul/li[4]/a").click
#    @driver.find_element(:css, "div#ctl00_Conteudo_PaginaSistemaArea1_pnlPanel.area-root div#ctl00_Conteudo_PaginaSistemaArea1_1301.area-4 div.area-4-2 div.main div.sub div.resultadoBusca div.filtro div.pagination.sli_pagination ul.ListaPaginas li.back a").click
    sleep 10
    @driver.find_element(:xpath, "/html/body/form/div[4]/div[4]/div[2]/div/div[2]/div[1]/div[1]/div[2]/ul/li[5]/a").click
    sleep 10
end
#html body#ctl00_home.busca-resultado.default.sli-template form#aspnetForm div#ctl00_Conteudo_PaginaSistemaArea1_pnlPanel.area-root div#ctl00_Conteudo_PaginaSistemaArea1_1301.area-4 div.area-4-2 div.main div.sub div.resultadoBusca div.filtro div.pagination.sli_pagination ul.ListaPaginas li.back a

#  def element_present?(how, what)
#    ${receiver}.find_element(how, what)
#    true
#  rescue Selenium::WebDriver::Error::NoSuchElementError
#    false
#  end
#
#  def alert_present?()
#    ${receiver}.switch_to.alert
#    true
#  rescue Selenium::WebDriver::Error::NoAlertPresentError
#    false
#  end
#
#  def verify(&blk)
#    yield
#  rescue ExpectationNotMetError => ex
#    @verification_errors << ex
#  end
#
#  def close_alert_and_get_its_text(how, what)
#    alert = ${receiver}.switch_to().alert()
#    alert_text = alert.text
#    if (@accept_next_alert) then
#      alert.accept()
#    else
#      alert.dismiss()
#    end
#    alert_text
#  ensure
#    @accept_next_alert = true
#  end
end
