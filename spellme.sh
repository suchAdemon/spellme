#!/bin/bash
num1=("([0-9])" "\\1" "")
alfanum1=("[aA]" "A" "LFA")
alfanum2=("[bB]" "B" "RAVO")
alfanum3=("[cC]" "C" "HARLIE")
alfanum4=("[dD]" "D" "ELTA")
alfanum5=("[eE]" "E" "CHO")
alfanum6=("[fF]" "F" "OXTROT")
alfanum7=("[gG]" "G" "OLF")
alfanum8=("[hH]" "H" "OTEL")
alfanum9=("[iI]" "I" "NDIA")
alfanum10=("[jJ]" "J" "ULIETT")
alfanum11=("[kK]" "K" "ILO")
alfanum12=("[lL]" "L" "IMA")
alfanum13=("[mM]" "M" "IKE")
alfanum14=("[nN]" "N" "OVEMBER")
alfanum15=("[oO]" "O" "SCAR")
alfanum16=("[pP]" "P" "APA")
alfanum17=("[qQ]" "Q" "UEBEC")
alfanum18=("[rR]" "R" "OMEO")
alfanum19=("[sS]" "S" "IERRA")
alfanum20=("[tT]" "T" "ANGO")
alfanum21=("[uU]" "U" "NIFORM")
alfanum22=("[vV]" "V" "ICTOR")
alfanum23=("[wW]" "W" "HISKEY")
alfanum24=("[xX]" "X" "-RAY")
alfanum25=("[yY]" "Y" "ANKEE")
alfanum26=("[zZ]" "Z" "ULU")

special1=("\*" "\*" "ASTERISK")
special2=("\'" "\'" "SINGLE QUOTE")
special3=("\"" "\"" "DOUBLE QUOTE")
special4=("\^" "\^" "CIRCUMFLEX")
special5=("\_" "\_" "UNDERSCORE")
special6=("\-" "\-" "HYPHEN")
special7=("\&" "\&" "AMPERSAND")
special8=("\%" "\%" "PERCENT")
special9=("\~" "\~" "TILDE")
special10=("\/" "\/" "SLASH")
special11=("\\" "\\" "mBACKSLASH")
special12=("\(" "\(" "OPENING PARENTHESIS")
special13=("\)" "\)" "CLOSING PARENTHESIS")
special14=("\[" "\[" "mOPENING BRACKET")
special15=("\]" "\]" "mCLOSING BRACKET")
special16=("\{" "\{" "OPENING (CURLY)BRACE")
special17=("\}" "\}" "CLOSING (CURLY)BRACE")
special18=("\<" "\<" "OPENING ANGLE BRACKET")
special19=("\>" "\>" "CLOSING ANGLE BRACKET")
special20=("\#" "\#" "HASH")
special21=("\@" "\@" "AT-SIGN")
special22=("\." "\." "DOT")
special23=("\," "\," "COMMA")
special24=("\:" "\:" "COLON")
special25=("\;" "\;" "SEMICOLON")
special26=("\?" "\?" "QUESTION MARK")
special27=("\!" "\!" "EXCLAMATION MARK")
special28=("\+" "\+" "PLUS SIGN")
special29=("\=" "\=" "EQUALS")
special30=("\ " "\ " "SPACE")
special31=("\|" "\|" "PIPE")
special32=("\\\\\$" "\\\\\$" "DOLAR")

replacearray=(
    num1[@]
    alfanum1[@]
    alfanum2[@]
    alfanum3[@]
    alfanum4[@]
    alfanum5[@]
    alfanum6[@]
    alfanum7[@]
    alfanum8[@]
    alfanum9[@]
    alfanum10[@]
    alfanum11[@]
    alfanum12[@]
    alfanum13[@]
    alfanum14[@]
    alfanum15[@]
    alfanum16[@]
    alfanum17[@]
    alfanum18[@]
    alfanum19[@]
    alfanum20[@]
    alfanum21[@]
    alfanum22[@]
    alfanum23[@]
    alfanum24[@]
    alfanum25[@]
    alfanum26[@]
    special1[@]
    special2[@]
    special3[@]
    special4[@]
    special5[@]
    special6[@]
    special7[@]
    special8[@]
    special9[@]
    special10[@]
    special11[@]
    special12[@]
    special13[@]
    special14[@]
    special15[@]
    special16[@]
    special17[@]
    special18[@]
    special19[@]
    special20[@]
    special21[@]
    special22[@]
    special23[@]
    special24[@]
    special25[@]
    special26[@]
    special27[@]
    special28[@]
    special29[@]
    special30[@]
    special31[@]
    special32[@]
)

countreplacearray=${#replacearray[@]}

for i in $(seq 1 ${#1})
do
    getstr="$(echo "${1:i-1:1}")"
    for ((ii=0; ii<${countreplacearray}; ii++))
    do
        chkstr="${!replacearray[ii]:0:1}"
        echo "${getstr}" | grep -E "^${chkstr}$" -q
        if [ $? -eq 0 ]
        then
            repstr="${!replacearray[ii]:1:1}"
            fulstr="${!replacearray[ii]:2:1}"
            echo -e "$(echo "${getstr}" | sed -E "s/^${chkstr}$/\\\\033[1;31m${repstr}\\\\033[00m${fulstr}/")"
        fi
    done
done
