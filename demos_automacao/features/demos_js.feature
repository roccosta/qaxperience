#language: pt
#utf-8

Funcionalidade: Demo de execucao de JS
	Eu como QA cheio de esquemas
	Gostaria de executar comandos JS
	Para fazer coisas que o Capybara não faz

	@dragndrop
    Cenario: Drag n drop com JS
    	Dado que o site de testes de dragndrop seja acessado
		Quando executar o drag n drop com JS
		Entao os quadrados A e B deve estar invertidos

	@alert
    Cenario: Tratando Alert com JS
    	Dado que o site de testes de alert seja acessado
		Quando disparar o Alert JS
		Entao devo ver um Alert contendo o texto "I am a JS Confirm"
		Mas devo dispensa-lo