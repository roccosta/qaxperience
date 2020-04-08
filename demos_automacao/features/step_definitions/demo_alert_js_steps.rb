Dado("que o site de testes de alert seja acessado") do
  @page.call(DemoAlert).load
end

Quando("disparar o Alert JS") do
  @page.call(DemoAlert).click_alert_button
end

Entao("devo ver um Alert contendo o texto {string}") do |message|
  @page.call(DemoAlert).assert_alert_text(message)
end

Entao("devo dispensa-lo") do
  @page.call(DemoAlert).dismiss_alert
end