#language: pt
#utf-8

Funcionalidade: Demo de execucao de comandos de Shell
	Eu como QA cheio de esquemas
	Gostaria de executar comandos de Shell na automação
	Para fazer coisas que o Capybara não faz

	@compara_web_api
    Esquema do Cenario: Comparar o resultado da consulta de CEP via WEB e via API
    	Dado que esteja na home page dos correios
		Quando consultar "<CEP>" no site
		E consultar "<CEP>" via API
		Entao os resultados devem ser identicos

	Exemplos:

	| CEP      |
	| 03134002 |
	| 08141300 |