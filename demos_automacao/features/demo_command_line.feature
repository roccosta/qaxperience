#language: pt
#utf-8

Funcionalidade: Demo de execucao de comandos de Shell
	Eu como QA cheio de esquemas
	Gostaria de executar comandos de Shell na automação
	Para fazer coisas que o Capybara não faz

	@manipular_arquivo
    Cenario: Criar e popular o arquivo com comandos de Shell
    	Dado que o arquivo de comandos seja lido
		Quando executar no shell os comandos
		Entao devo ver o resultado lendo o "resultado.txt"
		Mas devo remover o "resultado.txt" para testes futuros funcionarem