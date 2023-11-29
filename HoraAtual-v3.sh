#!/bin/bash

###############################################################
#			     				      #
# Nome: HoraAtual-v3.sh	   			              #
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

# Case para definir período.
# Estou considerando que das 00:00 às 06:00 é noite.
echo
case $HORA in
	0[6-9] | 1[01])
		echo "Bom Dia!"
		;;
	1[2-7])
		echo "Boa Tarde!"
		;;
	*)
		echo "Boa Noite!"
		;;
esac

# If para reduzir a hora e definir AMPM
if [ $HORA -ge 12 ]
then
	AMPM=PM
	if [ $HORA -ne 12 ]
	then
		HORA=$(expr $HORA - 12)
	fi
else
	AMPM=AM
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
