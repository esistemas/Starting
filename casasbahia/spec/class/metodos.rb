class metodos
  def initialize(data)
    self.driver = data
  end

  def abrir_site
    @driver.get(@base_url + "/")
  end

  def selecionar_link
    @driver.find_element(:link, "2").click
    @driver.find_element(:link, "3").click
  end

#  def preencher_dados
#    codigo
#  end
#
#  def finalizar_dados
#    codigo
#  end
#
#  def validar_msg_sucesso
#    codigo
#  end
#
#  def logoff
#    codigo
#  end
end
