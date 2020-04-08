# frozen_string_literal: true

# :nodoc:
class Resultado < SitePrism::Page
	include RSpec::Matchers

	def compara_resultados(resposta_web, resposta_api)
	    expect(resposta_web == resposta_api).to be true
	end
end
