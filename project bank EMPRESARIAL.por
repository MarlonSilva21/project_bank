programa
{
	caracter voltar
	inteiro numeroConta, operacao, condicaoDebitoCredito = 10
	real saldo = 0.00, limiteEstudantil = 5000.0, total = saldo + limiteEstudantil, saque, deposito, diferenca
	real limiteEmpresarial = 10000.00
	real valorMovimentado
	cadeia nomeBanco = "BANCO G-4\n"
	cadeia slogan = "A ELITE DO BRASILEIRÃO\n"
	cadeia tipoConta
	
	funcao inicio()
	{
		escreva("Olá Mundo")
	}
	
	funcao contaEmpresarial(){
		tela4()
	}
	
	funcao tela4(){
		escreva(nomeBanco)
		escreva(slogan)

		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEmpresarial)
		
		debitoCreditoEmpresarial("| 3 - Limite Eempresarial | " , "*************************", "*************************",3)

		limpa()

		escreva(nomeBanco)
		escreva(slogan)
		
		escreva("\nCONTA " + tipoConta + "\n")
		escreva("\nSaldo Atual: R$ " + saldo + " - Limite: R$ " + limiteEmpresarial)

		limiteE()

	 }
	 funcao limiteE(){
		 	caracter opcao, opcao2, opcao3 = 's', opcao4
		 
			se(condicaoDebitoCredito <= 0){
			escreva("\n\nVocê atingiu o limite de 10 transações diárias!!!!")
			escreva("\nDeseja fazer uso do Limite empresarial de " + limiteEmpresarial + "? [S/N]: ")   
			leia(opcao)
		}
		senao{
			escreva("\nDeseja fazer uso do Limite empresarial de " + limiteEmpresarial + "? [S/N]: ")   
			leia(opcao)
		}
		 
		se(opcao == 's' ou opcao == 'S'){
			faca{

				escreva("Insira o valor desejado: R$ " )
				leia(valorMovimentado)

				se(valorMovimentado > limiteEmpresarial){
					faca{
						limpa()
						escreva("Você não tem esse valor de limite disponínel!!!")
						escreva("\n\nLimite disponível : " + limiteEmpresarial)

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

					}enquanto(valorMovimentado > limiteEmpresarial)
				}

				senao {
				limiteEmpresarial -= valorMovimentado
				saldo += valorMovimentado
	
				limpa()

				se(limiteEmpresarial == 0){
					escreva("\n\nVocê usou todo o limite disponível!")
					pare
				}
				
				escreva("O valor de " + valorMovimentado + " foi remanejado do limite empresarial para o seu saldo! \nBoas compras!!\n")
				}
	
				escreva("\nSaldo atual: R$ "+ saldo)
				escreva("\nLimite Disponível: R$ " + limiteEmpresarial)

				escreva("\n\nVocê ainda tem limite disponível!")
				escreva("\n\nDeseja continuar? [S/N] : ")
				leia(opcao3)

				se(opcao3 == 'n' ou opcao3 == 'N'){
					limpa()
					pare
					
				}
				
				
			}enquanto(limiteEmpresarial > 0 )
			
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
		 		escreva("\n\nDeseja fazer uso do Limite empresarial de R$ " + limiteEmpresarial + "? [S/N]: ")
				leia(opcao)
			}
			
			se(opcao == 's' ou opcao == 'S'){
				escreva("Insira o valor desejado: R$ " )
				leia(valorMovimentado)
	
				limiteEmpresarial -= valorMovimentado
				saldo += valorMovimentado
	
				limpa()
	
				escreva("O valor de " + valorMovimentado + " foi remanejado do limite empresarial para o seu saldo! \nBoas compras!!\n")
	
				escreva("\nSaldo atual: R$ "+ saldo)
				escreva("\nLimite Disponível: R$ " + limiteEmpresarial)
	
				escreva("\n\nPressione a tecla SPACE e ENTER para voltar ao menu")
				leia(opcao2)
	
				se(opcao2 == ' '){
					limpa()
					telaEmpresarial()
				}
			}
			
		}
		senao{
			limpa()
			escreva("********************************************************\n")
			escreva("*                                                      *\n")
			escreva("*  Obrigado por usar nossos serviços, volte sempre :)  *\n")
			escreva("*                                                      *\n")
			escreva("********************************************************\n")
			}
	}
	funcao debitoCreditoEmpresarial(cadeia x, cadeia y, cadeia z, inteiro limite){
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
				limiteE()
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */