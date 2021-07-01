programa
{
	
	funcao inicio()
	{
		cadeia contaPoupanca, contaCorrente, contaEspecial, contaEmpresarial, contaEstudantil, Sair
		inteiro conta
		real saldo = 0.00, valorMovimentado, creditoEspecial = 10000.0
		caracter opcaoOperacao, continua
		
		

		cabecalho()

		escreva("\n1 - CONTA POUPANÇA \n2 - CONTA CORRENTE \n3 - CONTA ESPECIAL \n4 - CONTA EMPRESARIAL \n5 - CONTA ESTUDANTIL \n6 - SAIR\n")
		escreva("\nDigite o código da opção: ")
		leia(conta)

		limpa()

		se(conta == 1){
			cabecalho()
			escreva("\nCONTA POUPANÇA\n")
			escreva("")
		}
		senao se(conta == 2){
			cabecalho()
			escreva("\nCONTA CORRENTE\n")
			escreva("")
		}
		senao se(conta == 3){
			cabecalho()
			escreva("\nCONTA ESPECIAL\n")
			escreva("")
		}
		senao se(conta == 4) {
			cabecalho()
			para(inteiro i = 0; i < 10; i++){
				escreva("\nCONTA EMPRESARIAL\n")
				escreva("Saldo atual: R$", saldo, "\n")
				escreva("Crédito especial disponível: R$", creditoEspecial, "\n")
				escreva("Movimento - D - Débito ou C - Crédito: \n")
				leia(opcaoOperacao)
				se(opcaoOperacao == 'D' ou opcaoOperacao == 'd'){
					escreva("\nValor movimento: R$")
					leia(valorMovimentado)
					saldo -= valorMovimentado
					escreva(saldo)
				}
				senao se(opcaoOperacao == 'C' ou opcaoOperacao == 'c'){
					escreva("\nValor movimento: R$")
					leia(valorMovimentado)
					saldo += valorMovimentado
					creditoEspecial -= saldo
					escreva(saldo)
				}
				
				/*escreva("CONTINUAR S/N: ")
				leia(continua)
					se(continua == 'n' ou continua == 'N'){
						pare
					}
					senao se(continua != 's' ou continua != 'S'){
						escreva("Opção inválida. Deseja continuar? S/N")
					}*/
				
					
			}
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
		}
			
		

		
	
	}
	funcao cabecalho () {
		escreva("BANZAI BANK\n")
		escreva("Banco Honesto\n")
	}
	
	
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */