programa {
  funcao inicio() {
    cadeia nome[4] = {"Breno","Bruna","Gabrieli","Poliana"}
    real notas[4][4] = {{7.0,10.0,8.0,5.0},
                        {8.0,6.0,10.0,8.5},
                        {6.0,9.0,7.0,4.5},
                        {3.0,4.5,8.0,10.0}}
    real medias[4]
    media(notas,medias)
    inteiro aluno
    escreva("Digite o número do aluno: ")
    leia(aluno)
    limpa()
    cadeia apr
    se(aprovado(medias[aluno])){
       apr="APROVADO"
    }senao{
       apr="REPROVADO"
    }
    geraRelatorio(nome[aluno],
    notas[aluno][0],notas[aluno][1],
    notas[aluno][2],notas[aluno][3],
    medias[aluno],apr)
  }
  funcao logico aprovado(real nota){
    se(nota>=6){
          retorne verdadeiro
    }senao{
          retorne falso
    }
 }
  funcao media(real notas[][], real &medias[]){
        para(inteiro l=0; l<4; l++){
             real sum = 0.0
             para(inteiro c = 0; c<4; c++){
                  sum += notas[l][c]
             }
             medias[l] = sum/4
     }
 }
  funcao escreveLinha(logico forte){
       se(forte){
             escreva("===============","\n")
       }senao{
             escreva("---------------","\n")
       }
 }
  funcao geraRelatorio(cadeia nome, real b1, real b2, real b3, real b4, real avr, cadeia apr){
        escreveLinha(verdadeiro)
        escreva("   Aluno:  "+nome,"\n")
        escreveLinha(falso)
        escreva("     1B  :   "+b1,"\n")
        escreva("     2B  :   "+b2,"\n")
        escreva("     3B  :   "+b3,"\n")
        escreva("     4B  :   "+b4,"\n")
        escreveLinha(falso)
        escreva("   Média :   "+avr,"\n")
        escreva("     "+apr,"\n")
        escreveLinha(verdadeiro)
   }
}
