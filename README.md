# Frogger demake

![Captura de tela](screencapture.png)


Implementação do jogo [Frogger (KONAMI, 1981)](https://invidious.privacyredirect.com/watch?v=WNrz9_Fe-Us) para o [processador do ICMC](https://github.com/simoesusp/Processador-ICMC), feita conforme exigência para aprovação na matéria de [Prática em Organização e arquitetura de computadores](https://gitlab.com/simoesusp/disciplinas/-/tree/master/SSC0119-Pratica-em-Organizacao-de-Computadores?ref_type=heads).

## Autores

| Nome | nUSP |
| :--- | :--- |
| Augusto Cavalcante Barbosa Pereira | 1465131 |
| Guilherme de Abreu Barreto | 12543033 |
| Felipe Carneiro Machado | 14569373 |

## Sumário
- [Proposta projetual](#proposta_projetual)
- [Instruções para montagem](instrucoes_para_montagem)
- [Instruções para simulação](#instrucoes_para_simulacao)
- [Instruções para compilação](instrucoes_para_compilacao)
- [Agradecimentos](#agradecimentos)

## Proposta projetual
Implementar em VHDL as instruções da linguagem de montagem para interação com o processador do ICMC para, com esta, criar um jogo apto a ser executado em placas FPGA modelo DE0-CV após compilação com o Sotware Quartus.

> **⚠ Atenção:** Na criação deste jogo foi necessária a extensão da capacidade de memória prevista, no projeto do processador, de 32 a 64 KB. Por isso, a tempo de escrita deste documento, para montá-lo, simulá-lo e compilá-lo faz-se necessário o uso do simulador e projeto Quartus para o processador aqui disponibilizados.

## Instruções para montagem

Usando o terminal de comando de sua escolha, acesse a pasta do projeto e execute:

```bash
cd assembler
gcc *.c assembler
mv assembler ../
cd ../
assembler frogger.asm frogger.mif
```
Desta forma será possível gerar novamente o arquivo `frogger.mif` a partir do código fonte `frogger.asm`.
## Instruções para simulação

Execute o script `compila.sh` localizado na pasta `simulator` e mova o executável para a mesma pasta em que se encontra o arquivo `.mif` a ser executado, por exemplo:

```bash
cd simulator
chmod +x compila.sh
./compila.sh
mv sim ../
cd ../
./sim frogger.mif charmap.mif
```

Onde `frogger.mif` é o arquivo referente ao jogo executável e `charmap.mif` o mapa de caracteres pelo primeiro utilizado. Desta forma o simulador será lançado com o jogo carregado. Pressione `ENTER` para a execução automática do programa, ou `END` para a execução deste instrução a instrução.

## Instruções para compilação
Siga as instruções providas no repositório da [referido processador](https://github.com/simoesusp/Processador-ICMC).
## Agradecimentos

Agradecemos ao [Professor Eduardo Simões](https://github.com/simoesusp) por todo auxílio prestado, assim como aos demais alunos que contribuíram com ferramentas de desenvolvimento das quais fizemos uso, como:
- Simuladores online como aquele de [Thiago Ambiel](https://github.com/thiagoambiel/SimuladorICMC) e [Vinícius Giroto](https://proc.giroto.dev/)
- Gerador de telas de [Gustavo Marconi](https://github.com/GustavoSelhorstMarconi/Create-Screens-in-Assembly-with-python)
