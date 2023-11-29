#!/bin/bash

###############################################################
#			     				      #
# Nome: HoraAtual-v1.sh	   			              #
# 			    				      #
# Autor: Aguinaldo Américo - aguinaldoamerico2@gmail.com      #
# Data: 29/11/2023					      #
#							      #
# Descrição: Exibe a hora atual no formato de 0 a 12,	      #
# 	     indica am/pm e dando uma mensagem de bom dia,    #
# 	     boa tarde ou boa noite.			      #
#							      #
# Uso: ./HoraAtual.sh					      #
#							      #
###############################################################

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

# If para definir período
# Estou considerando que das 00:00 às 06:00 é noite
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
	echo "Bom Dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
	echo "Boa Tarde!"
else
	echo "Boa Noite!"
fi

# If para definir AM/PM
if [ $HORA -ge 12 ]
then
	AMPM=PM
else
	AMPM=AM
fi

# If para reduzir a hora
if [ $HORA -gt 12 ]
then
	HORA=$(expr $HORA - 12)

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
