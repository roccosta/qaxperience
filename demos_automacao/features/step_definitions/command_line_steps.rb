Dado("que o arquivo de comandos seja lido") do
  @command_tree = IO.readlines("./features/data/commands.txt")
  puts "Listando diretorio sem o arquivo"
  fork { exec("ls") }
end

Quando("executar no shell os comandos") do
  @command_tree.each do | command |
  	puts command.chomp!
  	system("#{command}")
  end
  puts "Listando diretorio com o arquivo gerado pela linha de comando"
  fork { exec("ls") }
end

Entao("devo ver o resultado lendo o {string}") do |arquivo|
  puts `cat #{arquivo}`
end

Entao("devo remover o {string} para testes futuros funcionarem") do |arquivo|
  fork { exec("rm resultado.txt") }
  puts "Listando diretorio após remoção do arquivo via linha de comando"
  %x|ls|
end