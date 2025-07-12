#!/bin/bash

BLUE='\e[34m'
WHITE='\e[97m'
RESET='\e[0m'

type_line() {
    local str="$1"
    echo -e "$str" | while IFS= read -r -n1 char; do
        echo -ne "$char"
        sleep 0.001
    done
    echo
}

lines=(
"${BLUE}╔════════════════════════════════════════════════════════════════════════════╗"
"║                            ${WHITE}~ DEVELOPER STATS ~${BLUE}                             ║"
"╠════════════════════╦═══════════════════════════╦═══════════════╦═══════════╣"
"║ ${WHITE}Skill              ${BLUE}║ ${WHITE}Progress Bar              ${BLUE}║ ${WHITE}Level         ${BLUE}║ ${WHITE}XP        ${BLUE}║"
"╠════════════════════╬═══════════════════════════╬═══════════════╬═══════════╣"
"║ ${WHITE}Linux Kernel       ${BLUE}║ ${WHITE}[===========       ]      ${BLUE}║ ${WHITE}Good          ${BLUE}║ ${WHITE}600 XP    ${BLUE}║"
"║ ${WHITE}Hardware           ${BLUE}║ ${WHITE}[=============     ]      ${BLUE}║ ${WHITE}Very Good     ${BLUE}║ ${WHITE}700 XP    ${BLUE}║"
"║ ${WHITE}Automation         ${BLUE}║ ${WHITE}[========          ]      ${BLUE}║ ${WHITE}Beginner      ${BLUE}║ ${WHITE}400 XP    ${BLUE}║"
"║ ${WHITE}C Programming      ${BLUE}║ ${WHITE}[=============     ]      ${BLUE}║ ${WHITE}Very Good     ${BLUE}║ ${WHITE}700 XP    ${BLUE}║"
"║ ${WHITE}OOP                ${BLUE}║ ${WHITE}[================= ]      ${BLUE}║ ${WHITE}Excellent     ${BLUE}║ ${WHITE}900 XP    ${BLUE}║"
"║ ${WHITE}Java               ${BLUE}║ ${WHITE}[=============     ]      ${BLUE}║ ${WHITE}Very Good     ${BLUE}║ ${WHITE}700 XP    ${BLUE}║"
"║ ${WHITE}Python             ${BLUE}║ ${WHITE}[==================]      ${BLUE}║ ${WHITE}Expert        ${BLUE}║ ${WHITE}1000 XP   ${BLUE}║"
"║ ${WHITE}C++                ${BLUE}║ ${WHITE}[==================]      ${BLUE}║ ${WHITE}Expert        ${BLUE}║ ${WHITE}1000 XP   ${BLUE}║"
"║ ${WHITE}Data Structures    ${BLUE}║ ${WHITE}[==================]      ${BLUE}║ ${WHITE}Expert        ${BLUE}║ ${WHITE}1000 XP   ${BLUE}║"
"║ ${WHITE}Algorithms         ${BLUE}║ ${WHITE}[===========       ]      ${BLUE}║ ${WHITE}Good          ${BLUE}║ ${WHITE}600 XP    ${BLUE}║"
"║ ${WHITE}Shell Commands     ${BLUE}║ ${WHITE}[==================]      ${BLUE}║ ${WHITE}Expert        ${BLUE}║ ${WHITE}1000 XP   ${BLUE}║"
"╠════════════════════╩═══════════════════════════╩═══════════════╩═══════════╣"
"║                            ${WHITE}~ STATS SUMMARY ~${BLUE}                               ║"
"╠════════════════════════════════════════════════════════════════════════════╣"
"║ ${WHITE}Level: 86     ${BLUE}│ ${WHITE}Total XP: 8600   ${BLUE}│ ${WHITE}Experts: 4  ${BLUE}│ ${WHITE}Completion: 781%          ${BLUE}║"
"╚════════════════════════════════════════════════════════════════════════════╝"
"${BLUE}                  ~LOVE SNOW~ ~${RESET}"
)

for line in "${lines[@]}"; do
    type_line "$line"
done

