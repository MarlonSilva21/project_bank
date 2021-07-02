programa
{

	
	caracter voltar
	inteiro numeroConta, operacao 
	real saldo = 0.00, limiteEstudantil = 5000.00, total = saldo + limiteEstudantil, saque, deposito, diferenca
	real valorMovimentado
	cadeia nomeBanco = "BANCO G-4\n"
	cadeia slogan = "A ELITE DO BRASILEIRÃO\n"
	cadeia tipoConta
	
	funcao inicio()
	{
		menu()

		operacoes()
	}

	//funcao para o painel do menu
	funcao menu(){
		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\n1 - CONTA POUPANÇA")
		escreva("\n2 - CONTA CORRENTE")
		escreva("\n3 - CONTA ESPECIAL")
		escreva("\n4 - CONTA EMPRESARIAL")
		escreva("\n5 - CONTA ESTUDANTIL")
		escreva("\n6 - SAIR")

		escreva("\n\nDIGITE O CÓDIGO DA OPÇÃO SELECIONADA: ")

		leia(numeroConta)
		
	}

	// funcao com as opções de conta
	funcao operacoes(){
		
		
		//leia(numeroConta)
		
		escolha(numeroConta){
			caso 1:
				tipoConta = "POUPANÇA"
				contaPoupanca()
				pare
			caso 2:
				tipoConta = "CORRENTE"
				contaCorrente()
				pare
			caso 3:
				tipoConta = "ESPECIAL"
				contaEspecial()
				pare
			caso 4:
				tipoConta = "EMPRESARIAL"
				contaEmpresarial()
				pare
			caso 5:
				limpa()
				tipoConta = "ESTUDANTIL"
				contaEstudantil()
				pare
			caso 6:
				pare
			caso contrario:

			escreva("\n***************\n")
			escreva("Opcao inválida\n")
			escreva("***************\n")
			menu()
			operacoes()
			
		}
	}

	//funcao conta poupança
	funcao contaPoupanca(){
		escreva("conta poupanca")
	}

	//funcao conta corrente
	funcao contaCorrente(){
		escreva("conta corrente")
	}

	//funcao conta especial
	funcao contaEspecial(){
		escreva("conta especial")
	}

	//funcao conta empresarial
	funcao contaEmpresarial(){
		escreva("conta empresarial")
	}

	//funcao conta estudantil
	funcao contaEstudantil(){
		
		tela2()
	}
	
	//funcao pra conferir se vai ser debito ou crédito
	funcao debitoCredito(){
		escreva("\nMOVIMENTO --- 1 - debito | 2 - crédito: ")
		leia(operacao)

		se(operacao == 1){
			debito()
		}
		senao se(operacao == 2){
			credito()
		}
	}
	//funcao para debito
	funcao debito(){
		faca{
		escreva("Valor a ser debitado : R$ ")
		leia(valorMovimentado)
		saldo = saldo - valorMovimentado

		escreva("Deseja fazer outro débito? [S/N] : ")
		leia(voltar)

		limpa()
		}
		enquanto(voltar != 'N')
			inicio()
		
	}

	//funcao para credito
	funcao credito(){
		faca{
		escreva("Valor a ser creditado : R$ ")
		leia(valorMovimentado)

		saldo = saldo + valorMovimentado

		escreva("Deseja fazer outro crédito? [S/N] : ")
		leia(voltar)

		limpa()
		}
		enquanto(voltar != 'n' e voltar != 'N')
		inicio()

	}
	
	//funcao para a exibição da segunda tela
	funcao tela2(){
		escreva(nomeBanco)
		escreva(slogan)

		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEstudantil)
		debitoCredito()
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */