Dado("que o site de testes de dragndrop seja acessado") do
  @page.call(DemoDragnDrop).load
end

Quando("executar o drag n drop com JS") do
  @page.call(DemoDragnDrop).move_blocks
end

Entao("os quadrados A e B deve estar invertidos") do
  @page.call(DemoDragnDrop).check_column_position
end