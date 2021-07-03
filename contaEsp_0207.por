/*Usar o limite do saldo se no momento do movimento o saldo fica negativo, 
ajusta no saldo e diminuir no limite.Limite de R$ 1.000, */

// Nome: Banzai - slogan: O tempo é a nossa garantia!//


programa
{
	
		
	funcao inicio(){	
		// ESSA FUNÇÃO SERA A funcao contaespecial 
		real limite = 1000.00, saldo = 0.0
		real sacado = 0.0, depositado= 0.0, diferenca = 0.0
		caracter continua, sair, operacao
		continua = 's'
		sair = 'n'
		
		escreva("Conta Especial\n")
		//cabecalho()

		 
		escreva("Conta Especial como você! \n")		
		escreva("\n *** Tela de Extrato *** \n")
		escreva ("\nSeu saldo atual é:...........R$ ",saldo)
		escreva("\n")
		escreva("\nSeu limite especial é:....... R$ ", limite)
		escreva("\n")

		para(inteiro i=0; i<10; i++ ){
			
			escreva("\nO que deseja fazer?")	
			escreva("\nPara saque use [d]  \nPara depósito use [c] \n")
			escreva("\n")
			leia(operacao)
			limpa()

				

			se(operacao == 'D' ou operacao == 'd'){
				escreva("\nInforme valor do saque: R$")
				leia(sacado)
				limpa()
					
				
				se (sacado > (limite+saldo)){
					escreva("Não há saldo nem limite suficiente para essa operação!")
				}

				se(sacado > saldo e sacado <(saldo+limite)){
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
					
			se(operacao == 'C' ou operacao == 'c'){
				escreva("\nInforme valor do depósito: R$")
				leia(depositado)
				limpa()
				saldo = saldo + depositado
			}					
				escreva("\n")
				escreva ("\nSeu saldo atual é:...........R$ ",saldo)
				escreva("\nSeu limite especial é:....... R$ ", limite)
				escreva("\n")
			
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 192; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */