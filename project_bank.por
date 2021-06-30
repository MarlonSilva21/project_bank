programa
{
	
	funcao inicio()
	{
		inteiro conta, contadorTalao
		real saldo = 0.0, valorMovimentado
		caracter operacaoConta
		
		

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
			escreva("Saldo Atual: R$ ", saldo /*informação específica*/, "\n")
			escreva("Movimento - D - Débito ou C-Crédito:")
			leia(operacaoConta)
			escreva("\nValor movimentado: R$")
			leia(valorMovimentado)

			se(operacaoConta == 'd' ou operacaoConta == 'D'){			
				saldo -= valorMovimentado
			}   
			senao se(operacaoConta == 'c' ou operacaoConta == 'C'){
				saldo += valorMovimentado
			}

			escreva(saldo)
			
			escreva("Continuar S/N:")
			
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
		}
		

		
	}
	funcao cabecalho () {
		escreva("BANZAI BANK - G4\n")
		escreva("O banco é duradouro, seu dinheiro não.\n")
		
		
	}
	
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 544; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */