# frozen_string_literal: true

# :nodoc:
class Api < SitePrism::Page
  include HTTParty

  base_uri 'https://viacep.com.br/ws/'
  headers 'Content-Type' => 'application/json'

  def consulta_cep_api(cep)
    response = self.class.get("/#{cep}/json/")
    response_body = JSON.parse(response.body)
    api_response = []
    if response_body['complemento'] == ""
      api_response << "#{response_body['logradouro']}"
    else
      api_response << "#{response_body['logradouro']} - #{response_body['complemento']}"
    end
    api_response << "#{response_body['bairro']}"
    api_response << "#{response_body['localidade']}"
    api_response << "#{response_body['cep']}"
  end

end
