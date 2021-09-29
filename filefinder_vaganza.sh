#!/bin/bash


echo "--------------*******--------------"
echo "-----------------------------------"
echo "  ***   FILE FINDER Vaganza  ***   "
echo "-----------------------------------"
echo "-----------------------------------"

echo ""
echo "Informe o site:"
read site


echo ""
echo "Informe a extensao do arquivo:"
read ext

echo "----------------------------"
echo "    ARQUIVOS ENCONTRADOS    "
echo "----------------------------"


lynx -dump "http://google.com/search?num=200&q=site:$site+ext:$ext" | grep ".$ext" | cut -d "=" -f 2 | egrep -v "site|google" | sed 's/...$//'g

echo ""
echo ""

echo "--------------*******--------------"
echo "-----------------------------------"
echo "   ***   AS LA VISTA, BABY!  ***   "
echo "-----------------------------------"
echo "-----------------------------------"
