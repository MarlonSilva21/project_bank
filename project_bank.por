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
<<<<<<< HEAD
		const inteiro N = 10
		inteiro conta, contadorTalao
		real saldo = 0.0, valorMovimentado
		caracter operacaoConta, continua
		
		cabecalho()
=======
		menu()

		operacoes()
	}
>>>>>>> conta-estudantil

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

<<<<<<< HEAD
		se(conta == 1){
			cabecalho()
			escreva("\nCONTA POUPANÇA\n")
			escreva("")
		}
		senao se(conta == 2){
			
			para (inteiro i = 1; i <= N; i++){
				cabecalho()		
				escreva("\nCONTA CORRENTE\n")
				escreva("Saldo Atual: R$ ", saldo /*informação específica*/, "\n")
				escreva("Movimento - D - Débito ou C-Crédito: ")
				leia(operacaoConta)
				escreva("Valor movimentado: R$ ")
				leia(valorMovimentado)
	
				se(operacaoConta == 'd' ou operacaoConta == 'D'){			
					saldo -= valorMovimentado
				}   
				senao se(operacaoConta == 'c' ou operacaoConta == 'C'){
					saldo += valorMovimentado
				}	
				
				escreva("Continuar S/N: ")
				leia(continua)

				se (continua == 'n' ou continua == 'N'){
					pare
				}
				/*enquanto (continua != 's' ou continua != 'S'){
					escreva("Opção inválida. Continuar S/N: ")
					leia(continua)
				}*/
				}
				limpa()
			}			
		
		senao se(conta == 3){
			cabecalho()
			escreva("\nCONTA ESPECIAL\n")
			escreva("")
		}
		senao se(conta == 4) {
			cabecalho()
			escreva("\nCONTA EMPRESARIAL\n")
			escreva("")
		}
		senao se(conta == 5){
			cabecalho()
			escreva("\nCONTA ESTUDANTIL\n")
			escreva("")
		}
		senao se(conta == 6){
			cabecalho()
			escreva("\nSAIR\n")
			escreva("")
=======
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
			
>>>>>>> conta-estudantil
		}
	}

	//funcao conta poupança
	funcao contaPoupanca(){
		escreva("conta poupanca")
	}

	//funcao conta corrente
	funcao contaCorrente(){
		
		tela4()
		
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

		para(inteiro i = 1; i <= 10; i++){			
			escreva("\nMOVIMENTO --- 1 - debito | 2 - crédito: ")
			leia(operacao)
		
			se(operacao == 1){
				debito()
			}
			senao se(operacao == 2){
				credito()
			}

			se (i < 10){
				
				escreva("Saldo R$ ", saldo)			
				escreva("\nDeseja continuar? [S/N] : ")
				leia(voltar)
		
				se(voltar == 'n' ou voltar == 'N'){
					pare
				}
			}
		}
	}
<<<<<<< HEAD
	funcao cabecalho () {
		escreva("BANZAI BANK - G4\n")
		escreva("O banco é duradouro, seu dinheiro não.\n")
		
		
	}
	
=======
	//funcao para debito
	funcao debito(){
		
		escreva("Valor a ser debitado : R$ ")
		leia(valorMovimentado)
		saldo = saldo - valorMovimentado

		limpa()			
	}

	//funcao para credito
	funcao credito(){
		
		escreva("Valor a ser creditado : R$ ")
		leia(valorMovimentado)

		saldo = saldo + valorMovimentado

		limpa()
	}
	
	//funcao para a exibição da segunda tela
	funcao tela2(){
		escreva(nomeBanco)
		escreva(slogan)

		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEstudantil)
		debitoCredito()
		inicio()
	}
>>>>>>> conta-estudantil
	
	//funcao para a exibição da tela conta-corrente
	funcao tela4(){

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)
		debitoCredito()

		limpa()

		caracter opcao
		inteiro qtdCheque = 0, debitoCheque = 0

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)

		escreva("\n\nDeseja adquirir talão de cheques? (Valor de R$30 por talão) [S/N]: ")
		leia(opcao)
		 
		 se (opcao == 's' ou opcao =='S'){
		 	escreva("Quantos talões? (Limitado a 3): ")
		 	leia(qtdCheque)
		 
		   	debitoCheque = qtdCheque * 30

		   	limpa ()
		   	
		  	escreva("Quantidade de talões solicitados = ", qtdCheque)
		  	escreva("\nValor que será debitado da conta = R$ ", debitoCheque)
		  	escreva("\nSaldo após confirmação = R$ ", saldo - debitoCheque)
		  	escreva("\n\nConfirma? [S/N] ")
		  	leia(opcao)
		  	
		  	se (opcao == 's' ou opcao == 'S'){
		  	   	    saldo -= debitoCheque
		 	}
		  }

		  limpa ()
		  inicio ()	 
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
<<<<<<< HEAD
 * @POSICAO-CURSOR = 1239; 
=======
 * @POSICAO-CURSOR = 2795; 
 * @DOBRAMENTO-CODIGO = [43];
>>>>>>> conta-estudantil
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */