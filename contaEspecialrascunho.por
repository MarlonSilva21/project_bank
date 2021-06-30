/*Usar o limite do saldo se no momento do movimento o saldo fica negativo, 
ajusta no saldo e diminuir no limite.Limite de R$ 1.000*/

programa
{
	
	funcao inicio()
	{		
		real limite = 1.000, saldo, totalDisponivel
		caracter operacaoConta 
		
		escreva("ContaEspecial")

		faca{
			escreva ("Seu saldo atual é: .... R$ " ,saldo)
			escreva(" Seu limite especial é: .... R$ ", limite)
			
		}
		
		enquanto (retorno cabecalho = s )

		escreva("Deseja sacar ? ")
		escreva("Movimentos:  D  Débito ou C  Crédito")

		se(operacaoConta == 'd' ou operacaoConta == 'c'){
		leia(operacaoConta)
		
		}
	}

	/*senao se (conta == 2) {
			cabecalho ()
			escreva ("\ nCONTA CORRENTE \ n")
			escrever ("Saldo Atual: R $", saldo / * informação específica * /, "\ n")
			escreva ("Movimento - D - Débito ou C-Crédito:")
			leia (operacaoConta)
			escreva ("\ nValor movimentado: R $")
			leia (valorMovimentado)

			se (operacaoConta == 'd' ou operacaoConta == 'D') {			
				saldo - = valorMovimentado
			}   
			senao se (operacaoConta == 'c' ou operacaoConta == 'C') {
				saldo + = valorMovimentado*/
	

	
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */