# frozen_string_literal: true

Before do
  @page = lambda do |klass|
    klass.new
  end
end

at_exit do
	puts 'exemplo de comand após a execução de toda a suíte de testes'
end