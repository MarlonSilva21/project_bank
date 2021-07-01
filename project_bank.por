programa
{

	
	caracter voltar
	inteiro numeroConta 
	real saldo = 0.00, limite = 1000.00, total = saldo + limite, saque, deposito, diferenca
	
	funcao inicio()
	{
		menu()

		operacoes()
	}

	funcao menu(){
		
		escreva("\n1 - CONTA POUPANÇA")
		escreva("\n2 - CONTA CORRENTE")
		escreva("\n3 - CONTA ESPECIAL")
		escreva("\n4 - CONTA EMPRESARIAL")
		escreva("\n5 - CONTA ESTUDANTIL")

		escreva("\n\nSelecione seu tipo de conta: ")
		
	}

	funcao operacoes(){
		
		menu()
		leia(numeroConta)
		
		escolha(numeroConta){
			caso 1:
				contaPoupanca()
				pare
			caso 2:
				contaCorrente()
				pare
			caso 3:
				contaEspecial()
				pare
			caso 4:
				contaEmpresarial()
				pare
			caso 5:
				contaEstudantil()
				pare
			caso contrario:

			escreva("\n***************\n")
			escreva("Opcao inválida\n")
			escreva("***************\n")
			operacoes()
			
		}
	}

	funcao contaPoupanca(){
		
	}
	funcao contaCorrente(){
		
	}
	funcao contaEspecial(){
		
	}
	funcao contaEmpresarial(){
		
	}
	funcao contaEstudantil(){
		
	}
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */