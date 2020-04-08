Dado("que o potencial cliente esteja na Homepage") do
  @page.call(Home).load
end

Quando("preencher o formulario de solicitacao de Demo") do
  @page.call(Home).solicitar_demo
  @page.call(Home).preencher_formulario_demo
end

Entao("deve visualizar a mensagem de sucesso {string}") do |mensagem|
  @page.call(Home).enviar_formulario_preenchido
  @page.call(Home).mensagem_sucesso_presente?(mensagem)
end

Quando("nao preencher {string}") do |campo|
  @page.call(Home).apagar_conteudo(campo)
  @page.call(Home).enviar_formulario_preenchido
end

Entao("deve visualizar a mensagem de erro {string}") do |mensagem|
  @page.call(Home).mensagem_erro_presente?(mensagem)
end