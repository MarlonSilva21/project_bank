programa
{
	inclua biblioteca Util

	
	caracter voltar, continua = 's', sair = 'n', operacao

	inteiro numeroConta, /*operacao,*/ condicaoDebitoCredito = 10, opcao
	real saldo = 0.00, limiteEstudantil = 5000.0,  limite = 1000.00, total = saldo + limiteEstudantil, sacado = 0.0, depositado= 0.0, diferenca = 0.0
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
		
		tela2()
		
	}

	//funcao conta especial
	funcao contaEspecial(){
		tela3()
	}

	//funcao conta empresarial
	funcao contaEmpresarial(){
		escreva("conta empresarial")
	}

	//funcao conta estudantil
	funcao contaEstudantil(){
		
		tela5()
	}

	funcao debitoCredito(){

		caracter opcaoSN

		para(inteiro x = 1; x < 10; x++){

			limpa()

			escreva(nomeBanco)
			escreva(slogan)
			escreva("\n")
			escreva("Saldo Atual: R$ ",saldo)
		
			escreva("\n\n***************************************************\n")
			escreva("1 - Saque")
			escreva("| 2 - Depósito")
			escreva("| 3 - Limite")
			escreva("| 4 - Sair")
			escreva("\n***************************************************\n")
	
			escreva("\n\nQual  transação você deseja fazer: ")
			leia(opcao)
	
			se(opcao == 4){
				
				fim()
				pare
			}

			senao se(opcao == 3){
				escreva("Estamos em atualização")
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

					Util.aguarde(3000)
				}
				

				se(valorMovimentado <= 0 ) {

					limpa()
					escreva("\n       **********************          ")
					escreva("\n          VALOR INCORRETO !\n")
					escreva("       **********************        \n")

					escreva("\n\n        TENTE NOVAMENTE !!! ")
					Util.aguarde(5000)

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
				escreva("\nVocê não possui saldo suficiente!  tente novamente!!\n\n")

				Util.aguarde(3000)

				debitoCredito()
			
			
				}
				senao{
	
				saldo -= valorMovimentado
				limpa()
				escreva("\nSaque efetuado com sucesso!")
				Util.aguarde(3000)
				}
				
				
			}
		}
	}


	funcao tela5(){

		caracter opcao1
		
		escreva(nomeBanco)
		escreva(slogan)

		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEstudantil)
		
		

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEstudantil)

		escreva("\n\nDeseja usar o Limite Estudantil ? [S/N]: ")
		leia(opcao1)

		se(opcao1 == 's' ou opcao1 == 'S'){
			limiteS()
		}
		senao se (opcao1 == 'n' ou opcao1 == 'N'){
			//fim()
		}
		senao {
			enquanto(opcao1 != 's' e opcao1 !='S' e opcao1 != 'n' e opcao1 !='N'){ 	
		 		limpa()
		 		escreva("Saldo Atual: R$ " + saldo)
		 		escreva("\nOpção inválida!")
		 		escreva("\n\nDeseja usar o Limite Estudantil ? [S/N]: ")
				leia(opcao)
				se(opcao1 == 's' ou opcao1 =='S'){
					limiteS()
				}
				senao{
					limpa()
					escreva("Operação cancelada!")
					Util.aguarde(5000)
					
				}
			}
		}
		debitoCredito()	

	}

	funcao tela2(){

		caracter opcao1
		
		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)
		debitoCredito()

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo)

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
				Util.aguarde(5000)	
				fim()
		
			}
			
			senao se (opcao1 == 'n' ou opcao1 == 'N'){
				escreva("Operação cancelada!")
				Util.aguarde(5000)
				fim()
			}
		
	}


	funcao tela3(){

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\n\nConta Especial\n")
		//cabecalho()

		 		
		//escreva("\n *** Tela de Extrato *** \n")
		escreva ("\nSeu saldo atual é:... ........R$ ",saldo)
		escreva("\n")
		escreva("Seu limite especial é:....... R$ ", limite)
		escreva("\n")

		para(inteiro i=0; i<10; i++ ){
			
				
			escreva("\nPara saque use [s] | Para depósito use [d] | Para sair use[x] \n")
			escreva("\nO que deseja fazer?")
			//escreva("\n")
			leia(operacao)
			limpa()

			se(operacao == 'x' ou operacao == 'X'){
				pare
			}
				

			se(operacao == 'S' ou operacao == 's'){
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
				se (sacado > (limite+saldo)){
					escreva("Não há saldo nem limite suficiente para essa operação!")
					Util.aguarde(3000)
					limpa()
				}
				

				senao se(sacado > saldo e sacado <(saldo+limite)){
					diferenca = sacado - saldo
					saldo = 0.0
					limite = limite - diferenca 
				}
					
				senao se (sacado <= saldo){
					saldo = saldo - sacado
				}

				
					
				senao se(sacado > saldo e sacado <= limite){
					limite = limite - sacado
				}
			
					 
					
			}
					
			se(operacao == 'D' ou operacao == 'd'){
				escreva("\nInforme valor do depósito: R$")
				leia(depositado)
				limpa()

				se (depositado <=0  ){
					escreva("Não é um valor válido para operação!")
				}
				senao{
					saldo = saldo + depositado
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

	funcao limiteS(){
		escreva("aaaa")
	}

	funcao fim(){
		escreva("FIM")
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6904; 
 * @DOBRAMENTO-CODIGO = [108, 203, 254, 297, 363, 460, 464];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */