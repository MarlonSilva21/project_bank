programa
{
	
	funcao inicio()
	{
		cadeia contaPoupanca, contaCorrente, contaEspecial, contaEmpresarial, contaEstudantil, Sair
		inteiro conta

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
		escreva("BANCO G4\n")
		escreva("Banco Honesto\n")
	}
		
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 567; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */