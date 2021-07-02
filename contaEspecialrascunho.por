/*Usar o limite do saldo se no momento do movimento o saldo fica negativo, 
ajusta no saldo e diminuir no limite.Limite de R$ 1.000*/

programa
{
	
		
	funcao inicio()
	{	// ESSA FUNÇÃO SERA A funcao contaespecial 
		real limite = 1000.00, saldo = 0.0, totalContaDisponivel = 0.0
		real sacado = 0.0, depositado= 0.0
		//real operacaoContaDebito[], operacaoContaCredito[] // valores de entrada ou saida subtrair ou somar em sacado ou depositado
		inteiro opcao =0 //menu conta especial
		caracter continua, sair
		continua = 's'
		sair = 'n'
		
		escreva("Conta Especial\n")
		//cabecalho()

		escreva ("\n Selecione a opção desejada: \n") 
		escreva( " 1 ..... Saque \n 2 ..... Depósito \n 3 ..... Extrato \n 4 ..... Retornar Menu Principal \n")
		leia(opcao)
		limpa()

		se(opcao == 1){
			//cabecalho() REATIVAR quando juntar ****

			faca{
				escreva("Conta Especial como você! \n")
				escreva("\n *** Tela de Saque ***\n")
				
				escreva ("\nDigite valor que deseja sacar : \n")
				leia(sacado)
				limpa()

				se	(sacado > saldo e sacado <= limite){
					limite -= sacado
				}
						senao se (sacado <= saldo){
						saldo -= sacado
						}		
								
				escreva("\nContinuar sacando? (s/n) \n")
				leia(continua)
			}enquanto (continua != 'n')
			inicio()
														
		}
				
		senao se(opcao == 2){
			//cabecalho()
			faca{
			escreva("Conta Especial como você! \n")	
			escreva("\n *** Tela de Depósito *** \n")
			
			escreva ("\nDigite valor que deseja depositar :\n")
			leia(depositado)
			limpa()

			
			se	(saldo < limite){
				limite += depositado			
			}
				
			senao se (limite == saldo){
				saldo += depositado
			} 
			
				
			escreva("\nContinuar depositando? (s/n) \n")
			leia(continua)

			
			}enquanto (continua != 'n')
			inicio()
		}
		
		senao se(opcao == 3){
			//cabecalho()
			enquanto (sair != 's'){
			totalContaDisponivel = limite - saldo 
			escreva("Conta Especial como você! \n")		
			escreva("\n *** Tela de Extrato *** \n\n")
			escreva ("Seu saldo atual é:...........R$ ",saldo)
			escreva("\n")
			escreva("Seu limite especial é:....... R$ ", limite)
			escreva("\n")
			escreva("Total disponivel em conta:... R$ ", totalContaDisponivel)
			escreva("\n")

			

			escreva("\n\nDeseja retornar ao menu (s/n)?")
			leia(sair)

			}
			inicio()

		}	
		
		senao se(opcao == 4) {
			//cabecalho()
			escreva("\n Retornar ao Menu Principal! \n")
			inicio() // Menu principal é inicio() e essa função passa a ser conta especial ***	
	
		}

			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */