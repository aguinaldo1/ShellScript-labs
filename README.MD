# Programação Shell Script - Automatização de Rotinas
Esse repositório tem por finalidade armazenar scripts utilizados para pratica de programação em Shell Script.

## ⚙️ Como executar:
	1. Definir permissão de execução: chmod +x <nome do arquivo.sh>.
	2. Para executar o script: ./<nome do arquivo.sh> e/ou bash <nome do arquivo.sh>.

## 🚀 Começando

Script 1
```
myscript.sh
- Descrição: Script com a finalidade de imprimir na tela um Hello World.
```

Script 2 
```
SomaValores.sh
- Descrição: Script que após executado solicita dois valores como entrada.
	     Esses valores são somados e o resultado é exibido para o usuário.
```

Script 3 
```
RelatorioMaquina.sh
- Descrição: Script que gera relatório com informações da máquina atual:
	- Nome da Máquina
	- Data e Hora Atual
	- Desde quando a máquina está ativa
	- Versão do Kernel
	- Quantidade de CPUs/Cores
	- Modelo da CPU
	- Total de Memória RAM Disponível
	- Partições

		Comandos:
			uname                 - informações do sistema.
			/proc/cpuinfo         - informações de CPUs.
			/proc/meminfo ou free - informações de memória.
			hostname              - nome da máquina.
			uptime                - último restart.
			df                    - exibir as partições.

  OBS.: Nesse exercício foi usado combinações de comandos como:tr,cut,grep,sed a fim de extrair e formatar as informações desejadas.
      Foi usado ajudas pelo man e --help para fazer a identificação da melhor opção para cada parâmetro.

Script 4 
```
RelatorioUsuario.sh 
- Descrição: Script que recebe um nome de usuário como parâmetro e exibe as seguintes informações:
- UID do usuário.
- Nome Completo / Descrição do Usuário.
- Total em Uso no /home do usuário.
- Informações do último login do usuário.
- Valida se o usuário existe ou não, nesse caso sem o uso do if.
	Se o usuário não existir retornara o exit code 1, se existir retornara o exit 0.

		Comandos:
			- du - para descobrir o uso do diretório.
			- lastlog - para informações do login.
			- Dados do usuário no arquivo /etc/passwd.

```
### Uso de Instruções Condicionais
Script 5 - HoraAtual-v1.sh - Condicional com o uso do if.
Script 6 - HoraAtual-v2.sh - Condicional com o uso do if | elif | else.
Script 7 - HoraAtual-v3.sh - Condiciona usando case.
- Descrição: Script que baseia-se no horário atual e printa na tela: Bom dia, Boa Tarde ou Boa Noite.
  Considera o começo do dia às 06:00.
  O mesmo script mostra a hora atual no formato de 0 a 12, indicando AM ou PM.




















