#!/bin/bash

do_handle() {
	while [[ "$yesno" != "y" && "$yesno" != "n" ]]; do
        echo -e "${YELLOW}\nPlease correct input!(╯'□')╯︵ ┻━┻ (y/n)${NC}"
	((counter++))
        read yesno
	if [ "$counter" -eq 2 ]; then
		clear
		figlet "GET 			LOST"
		echo -e "\nDONT PLAY WITH ME GO OUT !（ꐦ𝅒_𝅒）"
		exit
		fi
	done
}
