#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;38;5;51m'
GRAY='\033[0;37m'
PURPLE='\033[0;38;5;135m'
ORANGE='\033[0;38;5;208m'
YELLOW='\033[0;38;5;220m'
BLUE='\033[0;38;5;39m'
GREEN='\033[0;38;5;82m'
counter=0
source ./handle.sh
source ./downmiss.sh

handlemiss

echo -e "${YELLOW}  (っ◔◡◔)っ ♥ I LOVE SNOW ♥${NC}"

#!/bin/bash

NC='\033[0m'

COLORS=(17 18 19 20 21 27 33 39 45 81 87 123 159 195 231)

TEXT=(
" ▄▄▄       ██░ ██  ███▄ ▄███▓ ▄▄▄      ▓█████▄     ██▀███   ▄▄▄      ▓█████ ▓█████▄"
"▒████▄    ▓██░ ██▒▓██▒▀█▀ ██▒▒████▄    ▒██▀ ██▌   ▓██ ▒ ██▒▒████▄    ▓█   ▀ ▒██▀ ██▌"
"▒██  ▀█▄  ▒██▀▀██░▓██    ▓██░▒██  ▀█▄  ░██   █▌   ▓██ ░▄█ ▒▒██  ▀█▄  ▒███   ░██   █▌"
"░██▄▄▄▄██ ░▓█ ░██ ▒██    ▒██ ░██▄▄▄▄██ ░▓█▄   ▌   ▒██▀▀█▄  ░██▄▄▄▄██ ▒▓█  ▄ ░▓█▄   ▌"
" ▓█   ▓██▒░▓█▒░██▓▒██▒   ░██▒ ▓█   ▓██▒░▒████▓    ░██▓ ▒██▒ ▓█   ▓██▒░▒████▒░▒████▓"
" ▒▒   ▓▒█░ ▒ ░░▒░▒░ ▒░   ░  ░ ▒▒   ▓▒█░ ▒▒▓  ▒    ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░░ ▒░ ░ ▒▒▓  ▒"
"  ▒   ▒▒ ░ ▒ ░▒░ ░░  ░      ░  ▒   ▒▒ ░ ░ ▒  ▒      ░▒ ░ ▒░  ▒   ▒▒ ░ ░ ░  ░ ░ ▒  ▒"
"  ░   ▒    ░  ░░ ░░      ░     ░   ▒    ░ ░  ░      ░░   ░   ░   ▒      ░    ░ ░  ░"
"      ░  ░ ░  ░  ░       ░         ░  ░   ░          ░           ░  ░   ░  ░   ░"
"      ░                                    ░"
)

for i in "${!TEXT[@]}"; do
  color=${COLORS[i]}
  printf "\033[38;5;%sm%s${NC}\n" "$color" "${TEXT[i]}"
  sleep 0.05 
done

echo -e "${NC}"
echo -e "${CYAN}                             I 𝒘𝒓𝒐𝒕𝒆 𝒎𝒚 𝒏𝒂𝒎𝒆 𝒉𝒆𝒓𝒆 𝒃𝒕𝒘 ❤\n\n"
read -p $'\033[0;33m(っ◔◡◔)っ ♥ So We Continue? (y/n/skip) : ' yesno

if [[ "$yesno" == "skip" ]]; then
	clear
	figlet -c "FINE !"
	./skill.sh
	sleep 6
	clear
	exit
fi

do_handle "$yesno"

if [[ "$yesno" == "y" ]]; then
	clear
	figlet -c "H	E	H	E"
    echo -e "${RED}\n			♡⸜(˶˃ ᵕ ˂˶)⸝♡  YAY ( ˶ˆᗜˆ˵ )!!\n"
    bar=30
    for ((i=1; i<=bar; i++)) do
	    printf "\r	               ["
	    for ((j=1; j<=bar; j++)); do
		    if [ $j -le $i ]; then
			    printf "${BLUE}█"
		    else
			    printf " "
		    fi
	    done
	    printf "]"
	    sleep 0.05
	done
fi

if [[ "$yesno" == "n" ]]; then
    	clear
	figlet -c "LOSER		 LOSER"
	echo -e "${BLUE}\nFINE I AM NOT SAD ANYWAY HMPH!.·°՞(っ-ᯅ-ς)՞°·."
    exit
fi


clear


source one.sh

./one.sh


