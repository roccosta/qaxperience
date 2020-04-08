Dado("que esteja na home page dos correios") do
  @page.call(Home).load
end

Quando("consultar {string} no site") do |cep|
  @page.call(Home).consulta_cep_web(cep)
  @page.call(Home).mudar_aba
  @resposta_web = @page.call(Home).obter_resultado_web
end

Quando("consultar {string} via API") do |cep|
  @resposta_api = @page.call(Api).consulta_cep_api(cep)
end

Entao("os resultados devem ser identicos") do
  @page.call(Resultado).compara_resultados(@resposta_web, @resposta_api)
end