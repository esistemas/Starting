require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "ExibirdetalheaparelhocelularSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.casasbahia.com.br/"
    @driver.manage.timeouts.implicit_wait = 30
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_exibirdetalheaparelhocelular_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "sli_search_1").clear
    @driver.find_element(:id, "sli_search_1").send_keys "celular"
    @driver.find_element(:id, "ctl00_Conteudo_PaginaSistemaArea1_ctl12_btnOK").click
    @driver.find_element(:css, "html body#ctl00_home.busca-resultado.default.sli-template").click
    @driver.find_element(:css, "img[alt=\"iPhone 6 Plus Apple com Tela 5,5”, iOS 8, Touch ID, Câmera iSight 8MP, Wi-Fi, 3G/4G, GPS, MP3, Bluetooth e NFC – Dourado\"]").click
    sleep 05
  end

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
