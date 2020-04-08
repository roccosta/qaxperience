# frozen_string_literal: true

# :nodoc:
class Home < SitePrism::Page
	include RSpec::Matchers

	set_url  'http://www.correios.com.br/'

	element  :busca_cep, "#acesso-busca"
	elements :lupa_busca, ".ic-busca-out"
	element  :rua_web,    "body > div.back > div.tabs > div:nth-child(2) > div > div > div.column2 > div.content > div.ctrlcontent > table > tbody > tr:nth-child(2) > td:nth-child(1)"
	element  :bairro_web, "body > div.back > div.tabs > div:nth-child(2) > div > div > div.column2 > div.content > div.ctrlcontent > table > tbody > tr:nth-child(2) > td:nth-child(2)"
	element  :cidade_web, "body > div.back > div.tabs > div:nth-child(2) > div > div > div.column2 > div.content > div.ctrlcontent > table > tbody > tr:nth-child(2) > td:nth-child(3)"
	element  :cep_web,    "body > div.back > div.tabs > div:nth-child(2) > div > div > div.column2 > div.content > div.ctrlcontent > table > tbody > tr:nth-child(2) > td:nth-child(4)"

	def consulta_cep_web(cep)
		busca_cep.set cep
	    lupa_busca[1].click
	end

	def mudar_aba
		window = page.driver.browser.window_handles
	  	page.driver.browser.switch_to.window(window.first)
	  	page.driver.browser.close
	  	page.driver.browser.switch_to.window(window.last)
	end

	def obter_resultado_web
		web_result = []
		web_result << rua_web.text.strip
		web_result << bairro_web.text.strip
		web_result << cidade_web.text.split('/')[0].strip
		web_result << cep_web.text.strip
		web_result
	end

end
