# Factory Floor Calculator
Projeto de uma Calculadora Digital em VHDL e em C para o estudo da disciplina de Lógica Reconfigurável na UTFPR no segundo semestre de 2025

# Pré-requistos
É necessário a intalação de softwares de programação em microprocessadores como o MicroBlaze, O ISE Design Suite Tool, utilizado para o desenvolvimento e compilação deste projeto e o Adept Diligent, para comunicar e instalar o programa desenvolvido no microprocessador utilizado.
Para executar este projeto, é necessário o kit de desenvolvomento de hardware Xilinx Nexys 3 com um FPGA Spartan 6 para a simulação do microprocessador e sua lógica aqui programada.

# Para executar
Ao salvar o projeto em uma máquina, abra a parta de trabalho com o projeto pelo ISE, selecionando a pasta 
No ISE, navegue até o arquivo calc.vhdl e compile o código.
No Adept com o FPGA reconhecido, selecione o arquivo calc.bit e clique em program, para executar as lógica este projeto.

# Funcionamento
Selelecionando as 7 primeiras chaves do Kit Nexys3 como entradas binárias, estas terão um valor representando os bit binários, que serão convertido e apresentados em decimais no display de 7 segmentos com 4 displays do Kit Nexys.
A chave de maior bit, a 8ª chave, muda a variável da calculadora, sendo 0 para a primeira variável e 1 para a segunda.
Ao valorar as variáveis desejadas, os 5 botões do kit realizam operações matemáticas como soma, subtração, multiplicação, divisão inteira, resto da divisão e até apresentam as variáveis, como o comentado no código.
Os resultados das operações matemáticas com as variáveis entradas são apresentados no display de 7 segmentos com 4 displays, sendo possível resultados atoe 4 casas decimais.
