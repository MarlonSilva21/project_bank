programa
{
	inclua biblioteca Texto
	inclua biblioteca Util

	
	caracter voltar, continua = 's', sair = 'n', operacao

	inteiro numeroConta, /*operacao,*/ condicaoDebitoCredito = 10, opcao
	inteiro cont = 0
	inteiro i = 0
	real saldo = 0.00, limiteEE = 0.0,  limite = 1000.00, sacado = 0.0, depositado= 0.0, diferenca = 0.0
	real valorMovimentado
	cadeia nomeBanco = "BANCO BANZZAI"
	cadeia slogan = "\nJikan wa watashitachi no hoshōdesu\n"
	cadeia tipoConta
	inteiro aniversarioConta = 21
	
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
		tela1()
	}

	//funcao conta corrente
	funcao contaCorrente(){
		
		tela2()
		
	}

	//funcao conta especial
	funcao contaEspecial(){
		tela3()
	}

	//funcao conta empresarial
	funcao contaEmpresarial(){
		tela4()
	}

	//funcao conta estudantil
	funcao contaEstudantil(){
		
		tela5()
	}

	funcao debitoCredito(){

		caracter opcaoSN
		faca{

			limpa()

			escreva(nomeBanco)
			escreva(slogan)
		
			escreva("\nCONTA " + tipoConta + "\n")
			escreva("\nSaldo Atual: R$ " + saldo)
		
			escreva("\n\n**************************************************************\n")
			escreva(" 1- Saque ")
			escreva("|2 - Depósito ")
			escreva("|3 - Sair ")
			escreva("\n**************************************************************\n")
	
			escreva("\n\nQual  transação você deseja fazer: ")
			leia(opcao)
	
			se(opcao == 3){
				
				pare
			}

			
			// deposito 
			senao se(opcao == 2){
				escreva("Insira o valor para depósito: ")
				leia(valorMovimentado)


				se(valorMovimentado > 0){
					saldo += valorMovimentado
					limpa()
					escreva("\nTransação concluída com sucesso!!\n")

					Util.aguarde(1500)
				}
				

				se(valorMovimentado <= 0 ) {

					limpa()
					escreva("\n       **********************          ")
					escreva("\n          VALOR INCORRETO !\n")
					escreva("       **********************        \n")

					escreva("\n\n        TENTE NOVAMENTE !!! ")
					Util.aguarde(1500)

					debitoCredito()				     
				}
			}
			// SAQUE
			senao se(opcao == 1){
				
				escreva("Insira o valor para saque: ")
				leia(valorMovimentado)

				caracter opcao1

		

				se(valorMovimentado > saldo){
				limpa()
				escreva("\nSaldo insuficiente.\n")

				Util.aguarde(1500)

				debitoCredito()
			
			
				}
				senao{
	
				saldo -= valorMovimentado
				limpa()
				escreva("\nSaque efetuado com sucesso!")
				Util.aguarde(1500)
				}
				
				
			}
			cont++
		}enquanto(cont<10 e opcao != 4)
	}


	funcao tela5(){
		limiteEE = 5000.0
		
		caracter opcao1
				
		debitoCreditoEE()	

	}
	funcao tela4(){
		limiteEE = 10000.00
		caracter desejaUsarLimite, desejaContinuar
		
		caracter opcao1
				
		debitoCreditoEE()
			
	}

	funcao tela2(){

		caracter opcao1
		

		debitoCredito()

		se(saldo >= 30){

			faca {
				escreva("\n\nDeseja adquirir talão de cheques? (Valor de R$30 por talão) [S/N]: ")
				leia(opcao1)
				
				se(opcao1 != 's' e opcao1 !='S' e opcao1 != 'n' e opcao1 !='N'){

					limpa()
					escreva("\nOpção Inválida!")
				}
			} enquanto(opcao1 != 's' e opcao1 !='S' e opcao1 != 'n' e opcao1 !='N')
							
				se(opcao1 == 's' ou opcao1 =='S'){
					desejaCheque()
				}
				senao{
					fim()
				}
		}
	}  

	funcao desejaCheque(){
		

		caracter opcao1
		inteiro qtdCheque = 0
		real debitoCheque
		
		escreva("Quantos talões? (Limitado a 3): ")	 	
		leia(qtdCheque)

		se (qtdCheque < 1 ou qtdCheque > 3){
			enquanto (qtdCheque < 1 ou qtdCheque > 3){
		 		limpa()
		 			
		 		escreva("Quantidade inválida!!\n")
		 		escreva("Escolha de 1 a 3 talões: ")
		 		leia(qtdCheque)
		 	}
		 }
		 
		 debitoCheque = qtdCheque * 30

		 se(saldo - debitoCheque < 0){
		 	enquanto(saldo - debitoCheque < 0){
		 		limpa()
		 		escreva("Saldo em conta insuficiente para essa quantidade!\n")
		 		escreva("\nSaldo: R$ ", saldo)
		 		escreva("\nQuantos talões você deseja comprar? (Valor de R$30 por talão): ")
		 		leia(qtdCheque)
		 
		   		debitoCheque = qtdCheque * 30
			}
		}

		limpa ()
		   	
		faca{	
			escreva("Quantidade de talões solicitados = ", qtdCheque)
			escreva("\nValor que será debitado da conta = R$ ", debitoCheque)
			escreva("\nSaldo após confirmação = R$ ", saldo - debitoCheque)
			escreva("\n\nConfirma? [S/N] ")
			leia(opcao1)
			se(opcao1 != 's' e opcao1 !='S' e opcao1 != 'n' e opcao1 !='N'){

				limpa()
				escreva("Opção Inválida!\n\n")
			}
		} enquanto (opcao1 != 's' e opcao1 !='S' e opcao1 != 'n' e opcao1 !='N')
			  	
			se (opcao1 == 's' ou opcao1 == 'S'){
				saldo -= debitoCheque
				escreva("Operação concluída!\n")
				Util.aguarde(1500)	
				fim()
		
			}
			
			senao se (opcao1 == 'n' ou opcao1 == 'N'){
				escreva("Operação cancelada!")
				Util.aguarde(1500)
				fim()
			}
		
	}


	funcao tela1(){

		inteiro diaAniversarioPoupanca
		
		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)
		escreva("\nAniversário da Conta: dia 21")

		

		para(inteiro x=0; x<10; x++ ){
								
			escreva("\n\n**************************************************************\n")
			escreva(" 1- Saque ")
			escreva("|2 - Depósito ")
			escreva("|3 - Sair ")
			escreva("\n**************************************************************\n")
	
			escreva("\n\nQual  transação você deseja fazer: ")
					
			leia(operacao)
			limpa()

			se(operacao == '3' ou operacao == '3'){
				escreva("\nQue dia que é hoje? : ")
				leia(diaAniversarioPoupanca)
				
				se(diaAniversarioPoupanca == aniversarioConta){
					saldo += saldo * (0.05)
				
					limpa()
		
					escreva("\n É ANIVERSÁRIO DA SUA CONTA!!!\n")
					escreva("Você teve um reajuste de 0.5 % no seu saldo")
					escreva("\n\nSeu novo saldo é de: R$ ",saldo)

					escreva("\n\nDeseja sair ou continuar ? [S/C]: ")
					leia(operacao)

					se(operacao == 's' ou operacao == 'S'){
						fim()
						pare
					}

					se(operacao == 'c' ou operacao == 'C'){
						tela1()
					}
		
					Util.aguarde(3000)
					limpa()
				}
					senao{
						fim()
					}
						
						pare
					}

					se(operacao == '1'){
						escreva("\nInforme valor do saque: R$")
						leia(sacado)
						limpa()
	
						se(sacado <= 0 ){
							enquanto (sacado <= 0  ){
							escreva("Não é um valor válido para operação!")
							Util.aguarde(3000)
							limpa()
							pare

							}
						}

						se (sacado > saldo){
							escreva("Não há saldo suficiente para essa operação!")
							Util.aguarde(3000)
							limpa()
						}

						senao se (sacado <= saldo e sacado > 0){
							
							saldo = saldo - sacado
							escreva("Transação concluída com sucesso !!!")
							Util.aguarde(3000)
							limpa()
						}

					}

					se(operacao == '2'){
						escreva("\nInforme valor do depósito: R$")
						leia(depositado)
						limpa()
		
						se (depositado <=0  ){
							
							escreva("Não é um valor válido para operação!")
							Util.aguarde(3000)
							limpa()
						}
						senao{
							saldo = saldo + depositado
							escreva("Transação concluída com sucesso !!!")
							Util.aguarde(3000)
							limpa()
						}

				
					}

				
				escreva(nomeBanco)
				escreva(slogan)		
				escreva("\n")
				escreva("\nCONTA POUPANÇA \n")
				escreva ("\nSeu saldo atual é:...........R$ ",saldo)
				
				escreva("\n")
				}
		
		
	}

	funcao tela3(){

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		escreva("\n")
		escreva("Saldo Atual: R$ ",saldo)
		escreva("\nLimite Especial: R$ ", limite)

		para(inteiro i=0; i<10; i++ ){
	
		
			escreva("\n\n**************************************************************\n")
			escreva(" 1- Saque ")
			escreva("|2 - Depósito ")
			escreva("|3 - Sair ")
			escreva("\n**************************************************************\n")
	
			escreva("\n\nQual  transação você deseja fazer: ")
					
			leia(operacao)
			limpa()

			se(operacao == '3'){
				fim()
				pare
			}
				

			se(operacao == '1'){
				escreva("\nInforme valor do saque: R$")
				leia(sacado)
				limpa()

				se(sacado <= 0 ){
					enquanto (sacado <= 0  ){
						escreva("Não é um valor válido para operação!")
						Util.aguarde(1500)
						limpa()
						pare

					}
				}
				se (sacado > (limite+saldo)){
					escreva("Não há saldo nem limite suficiente para essa operação!")
					Util.aguarde(1500)
					limpa()
				}
				

				senao se(sacado > saldo e sacado <(saldo+limite)){
					diferenca = sacado - saldo
					saldo = 0.0
					limite = limite - diferenca 
					escreva("Transação concluída com sucesso !!!")
					Util.aguarde(3000)
					limpa()
					
				}
					
				senao se (sacado <= saldo){
					saldo = saldo - sacado
					escreva("Transação concluída com sucesso !!!")
					Util.aguarde(3000)
					limpa()
				}

				
					
				senao se(sacado > saldo e sacado <= limite){
					limite = limite - sacado
					escreva("Transação concluída com sucesso !!!")
					Util.aguarde(3000)
					limpa()
				}
			
					 
					
			}
					
			se(operacao == '2'){
				escreva("\nInforme valor do depósito: R$")
				leia(depositado)
				limpa()

				se (depositado <=0  ){
					escreva("Não é um valor válido para operação!")
					Util.aguarde(3000)
					limpa()
				}
				senao{
					saldo = saldo + depositado
					escreva("Transação concluída com sucesso !!!")
					Util.aguarde(3000)
					limpa()
				}

				
			}			
				escreva(nomeBanco)
				escreva(slogan)		
				escreva("\n")
				escreva ("\nSeu saldo atual é:...........R$ ",saldo)
				escreva("\nSeu limite especial é:....... R$ ", limite)
				escreva("\n")
			
		}
	}
	//-----------------------------------------------------------------------------------

	funcao limiteE(){
		caracter desejaUsarLimite, desejaContinuar

		escreva("Deseja ultilizar seu limite especial? [S/N]")
		leia(desejaUsarLimite)

		se(desejaUsarLimite == 's' ou desejaUsarLimite == 'S'){
			escreva("Valor movimentado: ")
			leia(valorMovimentado)
			se(valorMovimentado <= 0.0){
				escreva("\n\nValor requerido inválido\nLimite especial: ",limiteEE,"\n\n")
				debitoCredito()
			}
			senao se(valorMovimentado > limiteEE){
				escreva("\n\nOperação indisponível\nLimite especial: ",limiteEE,"\n\n")
				debitoCredito()
			}
			senao se(valorMovimentado <= limiteEE){
				saldo+=valorMovimentado
				limiteEE-=valorMovimentado

				limpa()
	
				escreva("O valor de ", valorMovimentado, " foi remanejado do limite especial para o seu saldo! \nBoas compras.\n")
	
				escreva("\nSaldo atual: R$ ", saldo)
				escreva("\nLimite Disponível: R$ ", limiteEE,"\n\n")
			}
			
		}
		senao se(desejaUsarLimite == 'n' ou desejaUsarLimite == 'N'){
			limpa()
			debitoCredito()
		}
		senao se (desejaUsarLimite != 's' ou desejaUsarLimite != 'S' ou desejaUsarLimite != 'n' ou desejaUsarLimite != 'N'){
			escreva("\n\n==============.\n")
			escreva("Opção inválida.\n")
			escreva("==============.\n\n")
			debitoCredito()
		}
	}

	funcao fim(){
		escreva("********************************************************\n")
		escreva("*                                                      *\n")
		escreva("*  Obrigado por usar nossos serviços, volte sempre :)  *\n")
		escreva("*                                                      *\n")
		escreva("********************************************************\n")
	}
	funcao debitoCreditoEE(){

		caracter opcaoSN
		
		faca{

			
			limpa()
			
			escreva(nomeBanco)
			escreva(slogan)
			escreva("\n")
			escreva("Saldo Atual: R$ ",saldo)
			escreva("\nLimite: R$ ", limiteEE)
		
			escreva("\n\n**************************************************************\n")
			escreva(" 1- Saque ")
			escreva("|2 - Depósito ")
			escreva("|3 - Limite ")
			escreva("|4 - Sair ")
			escreva("\n**************************************************************\n")
	
			escreva("\n\nQual  transação você deseja fazer: ")
			leia(opcao)
	
			se(opcao == 4){
				limpa()
				fim()
				pare
			}

			senao se(opcao == 3){
				limiteE()
			}
			
			// deposito 
			senao se(opcao == 2){
				escreva("Insira o valor para depósito: ")
				leia(valorMovimentado)


				se(valorMovimentado > 0){
					saldo += valorMovimentado
					limpa()
					escreva("\nTransação concluída com sucesso!!\n")

					Util.aguarde(1500)
				}
				

				se(valorMovimentado <= 0 ) {

					limpa()
					escreva("\n       **********************          ")
					escreva("\n          VALOR INCORRETO !\n")
					escreva("       **********************        \n")

					escreva("\n\n        TENTE NOVAMENTE !!! ")
					Util.aguarde(1500)

					debitoCredito()				     
				}
			}
			// SAQUE
			senao se(opcao == 1){
				
				escreva("Insira o valor para saque: ")
				leia(valorMovimentado)

				caracter opcao1

		

				se(valorMovimentado > saldo){
				limpa()
				escreva("\nSaldo insuficiente.\n")

				Util.aguarde(1500)

				debitoCredito()
			
			
				}
				senao{
	
				saldo -= valorMovimentado
				limpa()
				escreva("\nSaque efetuado com sucesso!")
				Util.aguarde(1500)
				}
				
				
			}
			cont++
			se(cont==10){
				escreva("\n\nLimite de transações diárias excedido.\n\n")
				caracter desejaUsarLimite, desejaContinuar

				escreva("Deseja ultilizar seu limite especial? [S/N]")
				leia(desejaUsarLimite)
		
				se(desejaUsarLimite == 's' ou desejaUsarLimite == 'S'){
					escreva("Valor movimentado: ")
					leia(valorMovimentado)
					se(valorMovimentado <= 0.0){
						escreva("\n\nValor requerido inválido\nLimite especial: ",limiteEE,"\n\n")
						limiteE()
					}
					senao se(valorMovimentado > limiteEE){
						escreva("\n\nOperação indisponível\nLimite especial: ",limiteEE,"\n\n")
						limiteE()
					}
					senao se(valorMovimentado <= limiteEE){
						saldo+=valorMovimentado
						limiteEE-=valorMovimentado
		
						limpa()
			
						escreva("O valor de ", valorMovimentado, " foi remanejado do limite especial para o seu saldo! \nBoas compras.\n")
			
						escreva("\nSaldo atual: R$ ", saldo)
						escreva("\nLimite Disponível: R$ ", limiteEE,"\n\n")
					}
					
				}
				senao se(desejaUsarLimite == 'n' ou desejaUsarLimite == 'N'){
					limpa()
					escreva("\nOBRIGADO POR USAR NOSSOS SERVIÇOS.\n")
					Util.aguarde(1500)
					pare
				}
				senao se (desejaUsarLimite != 's' ou desejaUsarLimite != 'S' ou desejaUsarLimite != 'n' ou desejaUsarLimite != 'N'){
					faca{
					escreva("\n\n==============.\n")
					escreva("Opção inválida.\n")
					escreva("==============.\n\n")

					escreva("Deseja ultilizar seu limite especial? [S/N]")
					leia(desejaUsarLimite)
						se(desejaUsarLimite == 's' ou desejaUsarLimite == 'S'){
							escreva("Valor movimentado: ")
							leia(valorMovimentado)
							se(valorMovimentado <= 0.0){
								escreva("\n\nValor requerido inválido\nLimite especial: ",limiteEE,"\n\n")
								
							}
							senao se(valorMovimentado > limiteEE){
								escreva("\n\nOperação indisponível\nLimite especial: ",limiteEE,"\n\n")
								
							}
							senao se(valorMovimentado <= limiteEE){
								saldo+=valorMovimentado
								limiteEE-=valorMovimentado
				
								limpa()
					
								escreva("O valor de ", valorMovimentado, " foi remanejado do limite especial para o seu saldo! \nBoas compras.\n")
					
								escreva("\nSaldo atual: R$ ", saldo)
								escreva("\nLimite Disponível: R$ ", limiteEE,"\n\n")


							}
							fim()
							pare
						}
						senao se(desejaUsarLimite == 'n' ou desejaUsarLimite == 'N'){
							limpa()
							fim()
							pare
						}
					
					
					i++
					}enquanto(i <10)
				}
				
					}
		
		}enquanto(cont<10 e opcao != 4)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6054; 
 * @DOBRAMENTO-CODIGO = [115, 203, 211, 221, 250, 444, 555, 597, 604];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cont, 10, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */