#!/bin/bash

# By @m4lal0

# Regular Colors
Black='\033[0;30m'      # Black
Red='\033[0;31m'        # Red
Green='\033[0;32m'      # Green
Yellow='\033[0;33m'     # Yellow
Blue='\033[0;34m'       # Blue
Purple='\033[0;35m'     # Purple
Cyan='\033[0;36m'       # Cyan
White='\033[0;97m'      # White
Color_Off='\033[0m'     # Text Reset

# Additional colors
LGray='\033[0;37m'      # Ligth Gray
DGray='\033[0;90m'      # Dark Gray
LRed='\033[0;91m'       # Ligth Red
LGreen='\033[0;92m'     # Ligth Green
LYellow='\033[0;93m'    # Ligth Yellow
LBlue='\033[0;94m'      # Ligth Blue
LPurple='\033[0;95m'    # Light Purple
LCyan='\033[0;96m'      # Ligth Cyan

# Bold
BBlack='\033[1;30m'     # Black
BGray='\033[1;37m'		# Gray
BRed='\033[1;31m'       # Red
BGreen='\033[1;32m'     # Green
BYellow='\033[1;33m'    # Yellow
BBlue='\033[1;34m'      # Blue
BPurple='\033[1;35m'    # Purple
BCyan='\033[1;36m'      # Cyan
BWhite='\033[1;37m'     # White

function helpPanel(){
    echo -e "${BGray}Script para verificar si un sitio web está en línea o no.${Color_Off}"
    echo -e "\n${BGray}USO: \n\t${BYellow}./siteCheck.sh --url www.google.com${Color_Off}"
    echo -e "\n${BGray}OPCIONES:${Color_Off}"
    echo -e "\t${LBlue}[${BRed}-u , --url${LBlue}] ${BPurple}\tEspecificar la url del sitio a verificar.${Color_Off}"
    echo -e "\t${LBlue}[${BRed}-h , --help${LBlue}] ${BPurple}\tMostrar este panel de ayuda.${Color_Off}\n"
}

function statusWeb(){
    validation=$(curl -s -G "https://isitup.org/$url.txt" | awk -F", " '{print $3}')
    if [ "$validation" == "1" ]; then
        echo -e "\n${LBlue}[${BGreen}✔${LBlue}] ${BGreen}$url is up.${Color_Off}\n"
    else
        echo -e "\n${LBlue}[${BRed}✘${LBlue}] ${BRed}$url is down.${Color_Off}\n"
    fi
}

arg=""
for arg; do
	delim=""
	case $arg in
		--help)		args="${args}-h";;
		--url)	    args="${args}-u";;
        --*)        args="${args}*";;
		*) [[ "${arg:0:1}" == "-" ]] || delim="\""
        args="${args}${delim}${arg}${delim} ";;
	esac
done

eval set -- $args

declare -i parameter_count=0; while getopts ":u:h:" opt; do
    case $opt in
        u) url=$OPTARG && let parameter_count+=1;;
        h) helpPanel;;
    esac
done

if [ $parameter_count -ne 1 ]; then
    helpPanel
else
    statusWeb
fi