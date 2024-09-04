programa {
  funcao inicio() {
    
    //Declaração de variaveis para o menu
    real saldo = 0
    real saque, deposito
    cadeia controle, senha
    inteiro menu = 1
    cadeia extrato = ""
     
     // Senha para o acesso ao menu
    
      escreva("Digite a senha: ")
     leia(senha)
     se(senha != "PORTUGOL")

     enquanto(senha != "PORTUGOL"){
     escreva("Senha incorreta! Tente novamente: ")
      leia(senha)
     }

     // Inicio do menu

    enquanto(menu != 0){
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO  R$", saldo, "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      escolha(menu){
        
        // Inicio do caso 1
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        // Fim do caso 1

        // Inicio do caso 2
        caso 2:
        escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
        se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        pare
        // Fim do caso 2
        
        // Inicio do caso 3
        caso 3:
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        // Fim do caso 3

        // Inicio do caso 4
        caso 4:
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        // Fim do caso 4


        // Fim do programa
      }
      }
      }
      }