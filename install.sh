NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

# Define rainbow color code
colors=(
    "\033[31m"  # Red
    "\033[33m"  # Yellow
    "\033[32m"  # Green
    "\033[36m"  # Cyan
    "\033[34m"  # Blue
    "\033[35m"  # Magenta
)

reset="\033[0m"

# Function to print rainbow-colored text
rainbow() {
    local text="$1"
    local i
    local text_length=${#text}

    for ((i=0; i<text_length; i++)); do
        color_index=$((i % ${#colors[@]}))
        printf "${colors[$color_index]}${text:$i:1}"
    done
    printf "$reset\n"
}

banner() {
echo -e "$rainbow██████╗░░██████╗░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░"
echo -e "${GREEN}██╔══██╗██╔════╝░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░"
echo -e "${LIGHTCYAN}██████╔╝██║░░██╗░██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░"
echo -e "${WHITE}██╔═══╝░██║░░╚██╗██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗"
echo -e "${BLUE}██║░░░░░╚██████╔╝╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝"
echo -e "${WHITE}╚═╝░░░░░░╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░═╝░╚═════╝░ ${NOCOLOR}"
toilet -f term -F gay "╔═══════════════════════════╗"
echo -e "${GREEN}║██▓⡷ 𝗣𝗚𝗖𝗢𝗡𝗙𝗜𝗚 𝗩𝗜𝗣 𝗧𝗢𝗢𝗟 ⢾▓██║"
toilet -f term -F gay "╚═══════════════════════════╝"

}

if [ -f $HOME/TOOLFPS/fps ]; then
chmod +x $HOME/TOOLFPS/fps
mv $HOME/TOOLFPS/fps $PREFIX/bin
fi

clear
banner

pkg update && pkg upgrade
pkg install zip unzip
pkg update -y 
pkg upgrade -y
pkg install git -y

chmod +x PGTOOL
./PGTOOL
