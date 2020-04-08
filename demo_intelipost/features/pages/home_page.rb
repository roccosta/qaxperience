# frozen_string_literal: true

# :nodoc:
class Home < SitePrism::Page
	include RSpec::Matchers

	set_url  'https://www.intelipost.com.br/'

	element  :botao_solicite_demo, "#dt-btn-1"

	element  :campo_nome, "#input_11_4"
	element  :campo_email, "#input_11_2"
	element  :campo_telefone, "#input_11_3"
	element  :campo_empresa, "#input_11_7"

	element  :dropdown_cargo, "#input_11_12"	
	element  :dropdown_empresa, "#input_11_13"	
	element  :dropdown_envios_mensais, "#input_11_11"

	element  :botao_submit, "#gform_submit_button_11"

	element  :mensagem_sucesso, "#gform_confirmation_message_11 > h3:nth-child(4)"
	elements :mensagem_erro, ".gfield_description.validation_message"

	def solicitar_demo
	    botao_solicite_demo.click
	end

	def preencher_formulario_demo
		campo_nome.set 'Demo Prime Control'
		campo_email.set 'demo.prime.control@gmail.com'
		campo_telefone.set '11987654321'
		campo_empresa.set 'Prime Control'
		dropdown_cargo.select('Presidente')
		dropdown_empresa.select('E-commerce')
		dropdown_envios_mensais.select('mais de 10.000')
	end

	def enviar_formulario_preenchido
		botao_submit.click
	end

	def mensagem_sucesso_presente?(mensagem)
		expect(mensagem_sucesso.text == mensagem).to be true
	end

	def mensagem_erro_presente?(mensagem)
		expect(mensagem_erro[0].text == mensagem).to be true
	end

	def apagar_conteudo(nome_do_campo)
		send("campo_#{nome_do_campo}").set ''
	end

end
