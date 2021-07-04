programa
{

	
	caracter voltar
	inteiro numeroConta, operacao, condicaoDebitoCredito = 10
	real saldo = 0.00, limiteEstudantil = 5000.0, total = saldo + limiteEstudantil, saque, deposito, diferenca
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
		
		tela5()
	}
	
	
	//funcao pra conferir se vai ser debito ou crédito
	funcao debitoCredito(cadeia x, cadeia y, cadeia z, inteiro limite){
		limite = 3

		para(condicaoDebitoCredito ; condicaoDebitoCredito > 0; condicaoDebitoCredito--){

			escreva("\n\nTransações restante: "+ condicaoDebitoCredito)

			escreva("\n\n*************"+y+"***************\n")
			escreva("|1 - Saque | 2 - Depósito | " + x)
			escreva("\n**************"+z+"**************\n")

			
			escreva("\n\nDigite a opção escolhida: ")
			leia(operacao)

			se(operacao == 1){
				debito()
			}
			senao se(operacao == 2){
				credito()
			}
			senao se(operacao == limite){
				limiteS()
			}
			

			se (condicaoDebitoCredito > 0){

				
				escreva("Saldo R$ ", saldo)			
				escreva("\nDeseja continuar? [S/N] : ")
				leia(voltar)

				enquanto (voltar != 'n' e voltar != 'N' e voltar != 's' e voltar != 'S'){
					escreva("Opção inválida, tente novamente")
					escreva("\nDeseja continuar? [S/N] : ")
					leia(voltar)
				}

				se(voltar == 's' ou voltar == 's'){
					condicaoDebitoCredito--
					debitoCredito(x,y,z,limite)
				}

			}
			se(voltar == 'n' ou voltar == 'N'){
				//condicaoDebitoCredito = 0
				pare
			}
		}
	}
	//funcao para debito
	funcao debito(){

		caracter opcao1

		escreva("Valor a ser sacado : R$ ")
		leia(valorMovimentado)

		se(valorMovimentado > saldo){
			limpa()
			escreva("\nVocê não possui saldo suficiente!  tente novamente!!\n\n")
			
			//debitoCredito("","","",0)		
			//tela2()	

		}
		senao{

		saldo -= valorMovimentado
		escreva("\nSaque efetuado com sucesso!")
		}
		
	}
					

	//funcao para credito
	funcao credito(){
		
		escreva("Valor a ser depositado : R$ ")
		leia(valorMovimentado)

		saldo = saldo + valorMovimentado

		limpa()

		escreva("\nDepósito efetuadoo com sucesso!!\n")
	}

	funcao fim(){
		escreva("Obrigado por usar nossos serviços, volte sempre!!!!")
	}
	
	//funcao para a exibição da segunda tela
	funcao tela5(){
		escreva(nomeBanco)
		escreva(slogan)

		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEstudantil)
		
		debitoCredito("| 3 - Limite Estudantil | " , "*************************", "*************************",3)

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEstudantil)

		limiteS()

	}
	
	//funcao para a exibição da tela conta-corrente
	funcao tela4(){

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)
		debitoCredito("","","",0)

		limpa()

		caracter opcao
		inteiro qtdCheque = 0, debitoCheque = 0

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)

		escreva("\n\nDeseja adquirir talão de cheques? (Valor de R$30 por talão) [S/N]: ")
		leia(opcao)
		 
		se(opcao != 's' ou opcao !='S' ou opcao != 'n' ou opcao !='N'){
			enquanto(opcao != 's' e opcao !='S' e opcao != 'n' e opcao !='N'){ 	
		 		limpa()
		 		escreva("Saldo Atual: R$ " + saldo)
		 		escreva("Opção inválida\n")
		 		escreva("\n\nDeseja adquirir talão de cheques? (Valor de R$30 por talão) [S/N]: ")
				leia(opcao)
			}
		} 
		 
		 senao se(opcao == 's' ou opcao =='S'){
		 	escreva("Quantos talões? (Limitado a 3): ")	 	
		 	leia(qtdCheque)

		 	se (qtdCheque < 1 ou qtdCheque > 3){
		 		enquanto (qtdCheque < 1 ou qtdCheque > 3){
		 			limpa()
		 			
		 			escreva("Quantidade inválida!\n")
		 			escreva("Escolha de 1 a 3 talões: ")
		 			leia(qtdCheque)
		 		}
		 	}
		 
		 
		 
		   	debitoCheque = qtdCheque * 30

		 	se(saldo - debitoCheque < 0){
		 		enquanto(saldo - debitoCheque < 0){
		 			limpa()
		 			escreva("Saldo em conta insuficiente para essa quantidade!\n")
		 			escreva("Quantos talões você deseja comprar? (Saldo em conta R$", saldo, "): ")
		 			leia(qtdCheque)
		 
		   			debitoCheque = qtdCheque * 30
		 		}
		 	}

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
		  senao{
			inicio()
		  }
		  
		 
		 }	

		 funcao limiteS(){
		 	caracter opcao, opcao2, opcao3 = 's', opcao4
		 
			se(condicaoDebitoCredito <= 0){
			escreva("\n\nVocê atingiu o limite de 10 transações diárias!!!!")
			escreva("\nDeseja fazer uso do Limite estudantil de " + limiteEstudantil + "? [S/N]: ")   
			leia(opcao)
		}
		senao{
			escreva("\nDeseja fazer uso do Limite estudantil de " + limiteEstudantil + "? [S/N]: ")   
			leia(opcao)
		}
		 
		se(opcao == 's' ou opcao == 'S'){
			faca{

				escreva("Insira o valor desejado: R$ " )
				leia(valorMovimentado)

				se(valorMovimentado > limiteEstudantil){
					faca{
						limpa()
						escreva("Você não tem esse valor de limite disponínel!!!")
						escreva("\n\nLimite disponível : " + limiteEstudantil)

						escreva("\nQuer tentar novamente? [S/N]: ")
						leia(opcao4)

						se(opcao4 == 's' ou opcao4 == 'S'){
							escreva("Insira o valor desejado: R$ " )
							leia(valorMovimentado)
						}
						senao se(opcao4 == 'n' ou opcao4 == 'N'){
							limpa()
							inicio()
							
						}

					}enquanto(valorMovimentado > limiteEstudantil)
				}

				senao {
				limiteEstudantil -= valorMovimentado
				saldo += valorMovimentado
	
				limpa()

				se(limiteEstudantil == 0){
					escreva("\n\nVocê usou todo o limite disponível!")
					pare
				}
				
				escreva("O valor de " + valorMovimentado + " foi remanejado do limite estudantil para o seu saldo! \nBoas compras!!\n")
				}
	
				escreva("\nSaldo atual: R$ "+ saldo)
				escreva("\nLimite Disponível: R$ " + limiteEstudantil)

				escreva("\n\nVocê ainda tem limite disponível!")
				escreva("\n\nDeseja continuar? [S/N] : ")
				leia(opcao3)

				se(opcao3 == 'n' ou opcao3 == 'N'){
					limpa()
					pare
					
				}
				
				
			}enquanto(limiteEstudantil > 0 )
			
			escreva("\n\nPressione a tecla SPACE e ENTER para voltar ao menu")
			leia(opcao2)

			se(opcao2 == ' '){
				limpa()
				inicio()
			}
			
		}
		senao se(opcao != 'n' e opcao !='N'){
			enquanto(opcao != 's' e opcao !='S' e opcao != 'n' e opcao !='N'){ 	
		 		limpa()
		 		escreva("Saldo Atual: R$ " + saldo)
		 		escreva("\n\nOpção inválida tente novamente!!!\n")
		 		escreva("\n\nDeseja fazer uso do Limite estudantil de R$ " + limiteEstudantil + "? [S/N]: ")
				leia(opcao)
			}
			
			se(opcao == 's' ou opcao == 'S'){
				escreva("Insira o valor desejado: R$ " )
				leia(valorMovimentado)
	
				limiteEstudantil -= valorMovimentado
				saldo += valorMovimentado
	
				limpa()
	
				escreva("O valor de " + valorMovimentado + " foi remanejado do limite estudantil para o seu saldo! \nBoas compras!!\n")
	
				escreva("\nSaldo atual: R$ "+ saldo)
				escreva("\nLimite Disponível: R$ " + limiteEstudantil)
	
				escreva("\n\nPressione a tecla SPACE e ENTER para voltar ao menu")
				leia(opcao2)
	
				se(opcao2 == ' '){
					limpa()
					tela5()
				}
			}
			
		}senao{
			limpa()
			escreva("********************************************************\n")
			escreva("*                                                      *\n")
			escreva("*  Obrigado por usar nossos serviços, volte sempre :)  *\n")
			escreva("*                                                      *\n")
			escreva("********************************************************\n")
			}
		
	 }			 
}





/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9415; 
 * @DOBRAMENTO-CODIGO = [224];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */