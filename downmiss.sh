#!/bin/bash
handlemiss(){
	if ! command -v figlet &> /dev/null; then
    echo -e "${YELLOW}✦ figlet is not installed on your system.${NC}"
    read -p "Do you want to install it now? (y/n): " answer

    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        echo -e "${BLUE}→ Installing figlet...${NC}"

        if command -v pacman &> /dev/null; then
            sudo pacman -Sy --noconfirm figlet
        elif command -v apt &> /dev/null; then
            sudo apt update && sudo apt install -y figlet
        elif command -v dnf &> /dev/null; then
            sudo dnf install -y figlet
        else
            echo -e "${RED}✘ Could not detect your package manager to install figlet automatically.${NC}"
            exit 1
        fi

        echo -e "${BLUE}✓ figlet installed successfully!${NC}"
    else
        echo -e "${RED}✘ Cannot run the script without figlet.${NC}"
        exit
    fi
fi

clear
}
