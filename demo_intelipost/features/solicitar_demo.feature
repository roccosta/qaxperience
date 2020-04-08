#language: pt
#utf-8

Funcionalidade: Solicitar Demo da Plataforma Intelipost
	Eu como possivel Cliente Intelipost
	Gostaria de Solicitar uma Demo
	Para experimentar as funcionalidades da plataforma

	@sucesso
    Cenario: Solicitar uma demo com sucesso
    	Dado que o potencial cliente esteja na Homepage
		Quando preencher o formulario de solicitacao de Demo
		Entao deve visualizar a mensagem de sucesso "Obrigado pelo seu contato!"

	@limpar_campos
	Esquema do Cenario:
		Dado que o potencial cliente esteja na Homepage
		Quando preencher o formulario de solicitacao de Demo
		E nao preencher "<campo>"
		Entao deve visualizar a mensagem de erro "<conteudo_mensagem_erro>"

		Exemplos:

			| campo     | conteudo_mensagem_erro                          |
			| nome      | Precisamos saber seu nome.                      |
			| email     | Precisamos de um email para poder te responder. |
			| telefone  | Precisamos de um telefone de contato.           |
			| empresa   | Por favor informe o nome da empresa.            |