# Define colors
GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
BLUE="\e[34m"
PASTEL_PINK="\e[38;5;218m"
MAGENTA="\e[35m"
RED="\e[31m"
RESET="\e[0m"

# Define the function `nekofetch`
nekofetch() {
  # ASCII Art in Pastel Pink
  ASCII_ART="${PASTEL_PINK}
        へ  ♡  ╱|、
     ૮ - ՛)   (\` - 7
      /⁻ ៸|   |、՛〵
  乀(ˍ,ل  ل   じしˍ,)ノ 
  ${RESET}"

  # Get terminal prompt and user information
  USER=$(whoami)
  HOST=$(hostname)
  CWD=$(pwd)
  PROMPT="${GREEN}${USER}@${HOST}:${YELLOW}${CWD}${RESET}"

  # Gather system information
  OS=$(lsb_release -d | awk -F"\t" '{print $2}')
  KERNEL=$(uname -r)
  UPTIME=$(uptime -p)
  SHELL=$SHELL
  CPU=$(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)
  MEMORY=$(free -h | grep Mem | awk '{print $3 "/" $2}')

  # Display ASCII Art
  echo -e "$ASCII_ART"

  # Display the separator line with the prompt
  echo -e "${CYAN}----------------------------------------${RESET}"
  echo -e "$PROMPT"
  echo -e "${CYAN}----------------------------------------${RESET}"

  # Display system information
  echo -e "${BLUE}Username:${RESET} ${MAGENTA}$USER${RESET}"
  echo -e "${BLUE}Operating System:${RESET} ${MAGENTA}$OS${RESET}"
  echo -e "${BLUE}Kernel Version:${RESET} ${MAGENTA}$KERNEL${RESET}"
  echo -e "${BLUE}Uptime:${RESET} ${MAGENTA}$UPTIME${RESET}"
  echo -e "${BLUE}Shell:${RESET} ${MAGENTA}$SHELL${RESET}"
  echo -e "${BLUE}CPU:${RESET} ${MAGENTA}$CPU${RESET}"
  echo -e "${BLUE}Memory Usage:${RESET} ${MAGENTA}$MEMORY${RESET}"
}
