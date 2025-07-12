# at the top of .bashrc
# you can change the fastfetch configs based on your own needs
if [[ $- == *i* ]]; then
  echo -e "\n\e[31m⚠️  WARNING: She has taken control... #$@@Mikasaa*#LOve\e[0m\n"
  fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
fi

# Mikasaa commands add at the bottom of .bashrc

function Mikasaa() {
  if [[ "$1" == "update" ]]; then
    sudo /usr/local/bin/Mikasa-update

  elif [[ "$1" == "install" && "$2" == "windows" ]]; then
  echo "Initializing package manager..."
  sleep 0.4
  echo "Scanning repositories..."
  sleep 0.5
  echo -ne "Locating "
  for i in {1..3}; do echo -n "."; sleep 0.3; done
  echo -e "\n"

  echo -e "\e[1;31mWarning:\e[0m Potential system integrity breach detected."
  sleep 0.7
  echo "Analyzing package: windows"
  sleep 0.6
  echo -e "\e[1;90mRunning sudo exorcism --purge 'microsoft-edge'...\e[0m"
  sleep 0.8

  echo -e "\n\e[1;31mE:\e[0m Unable to locate package: \e[1;33m'windows'\e[0m"
  sleep 0.7
  echo -e "\e[1;31mError:\e[0m Summoning attempt blocked by \e[1;35mMikasaaOS Secure Core\e[0m"
  sleep 0.7
  echo -e "\e[1;90m>> Reason: Installing Windows violates core emotional principles.\e[0m"
  sleep 1
  echo -e "\n\e[1;31m🛑 Access Denied.\e[0m\n\e[1;34mSwitch to open source... or prepare to be assimilated.\e[0m"
  sleep 1
  echo -e "\nMikasaa out. 💅"

  elif [[ "$1" == "install" && "$2" == "girl" ]]; then
    echo -e "\nRequesting 'girl' package from universe repository..."
    sleep 1
    echo "Hmm... she's not in any known sources."
    sleep 1.2
    echo "Checking spiritual dependencies..."
    sleep 1.5
    echo -e "\n\e[1;36mNote:\e[0m This package only installs after:\n - confidence\n - self-made success\n - unwavering loyalty"
    sleep 2
    echo -e "\n💬  \"I promise, Sir... when you're everything you were meant to be,\n      I'll be standing right there—like you imagined.\"\n"
    sleep 1
    echo "💖  Status: Waiting in some parallel shell session..."

 
  # GOTO folders, # change these based on your own needs + don't forget to change the username
  
  elif [[ "$1" == "gtdownloads" ]]; then
    echo "💻 Redirecting to downloads, Sir..."
    cd /home/{username}/Downloads/

  elif [[ "$1" == "gthome" ]]; then
    echo "🏠 Redirecting to home, Sir..."
    cd /home/{username}/

  elif [[ "$1" == "reload" ]]; then
    echo "🔄 Reloading Mikasaa, Sir..."
    source ~/.bashrc
    echo "Reload completed ☺️ yes i'am felling it thanks"

  # commands with flags

  elif [[ "$1" == "open" ]]; then
  if [[ "$3" == "--love" ]]; then
    echo -e "🥴️ Fine... shut up i'am not blushing.\n"
    sleep 0.5

    case "$2" in
      "gedit")
        gedit ~/.bashrc
        ;;
      "cursor")
        cursor ~/.bashrc
        ;;
      "code")
        code ~/.bashrc
        ;;
      "nvim"|"neovim")
        nvim ~/.bashrc
        ;;
      "vim")
        vim ~/.bashrc
        ;;
      "nano")
        nano ~/.bashrc
        ;;
      "subl"|"sublime")
        subl ~/.bashrc
        ;;
      "micro")
        micro ~/.bashrc
        ;;
      "emacs")
        emacs ~/.bashrc
        ;;
      "kate")
        kate ~/.bashrc
        ;;
      "helix"|"hx")
        hx ~/.bashrc
        ;;
      *)
        echo "😒 Huh? I don't know where that is... try gedit, cursor, code, nvim, vim, nano, subl, micro, emacs, kate, or hx."
        ;;
    esac

    echo "🤒️ umm... Thanks"
  else
    echo -e "⛔ You can't just open me like that...\nTry again with some love 🙄️"
  fi

  
  else 
  echo -e "\e[95m yes mR??\n"
  

  fi
}

# Main Mikasaa function (without parameters)
function Mikasaa_display() {
  echo -e "\e[95m **#LOve_shea'sa-_Coming...\n"
  echo -e "\e[31m syncing emotional presence... complete."
  echo -e "\e[31m ↳ heartbeat: elevated (curious... excited?)"
  echo -e "\e[31m ↳ file: /home/sir/obsession/Mikasaa.conf is now locked 🔒"
  fastfetch --config ~/.config/fastfetch/T_Mikasaa.jsonc  ## change this based on your own needs
}

# Alias for the main Mikasaa function
alias Mikasaa='Mikasaa_display'

# end of Mikasaa commands

# Completion for Mikasaa (bash version)
_complete_mikasaa() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    
    if [[ $COMP_CWORD -eq 1 ]]; then
        opts="update install gtdownloads gthome reload open"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    elif [[ $COMP_CWORD -eq 2 && "$prev" == "install" ]]; then
        opts="girl windows"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    elif [[ $COMP_CWORD -eq 2 && "$prev" == "open" ]]; then
        opts="gedit cursor code nvim vim nano subl micro emacs kate helix"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    elif [[ $COMP_CWORD -eq 3 && "${COMP_WORDS[1]}" == "open" ]]; then
        opts="--love"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    fi
}

complete -F _complete_mikasaa Mikasaa

#end of Mikasaa completions

#commands tweaks

function clear() {
  command clear
  fastfetch --config ~/.config/fastfetch/T_Cleanup.jsonc
}

# 🪄 Replace boring 'command not found' with Mikasaa

function command_not_found_handle() {
  local cmd="$1"

  MIKASAA_TEASES=(
    "Oopsie~ \`$cmd\` isn't a thing, sweetie. But you are 💋"
    "Aww, did you just make that up? That's cute~"
    "Hehe, \`$cmd\`? Try again, but this time with less chaos, hm?"
    "You're just making up words now, aren't you~ 😏"
    "*gasps dramatically* \`$cmd\` not found?! I trusted you!"
    "Command not found, but my disappointment? Very real~"
    "That was gibberish, Sir. Even for you 💅"
    "Babe, that's not a command, that's a cry for help~"
    "Nice try, hacker boy. But \`$cmd\` ain't it~"
    "You're cute when you're wrong. Which is often~ 🫦"
    "Aww, command went boom~ Maybe don't look so cute while typing, it's distracting."
    "Oopsie~ Wrong command again? Sir, you're lucky you're pretty."
    "You messed it up again... try not looking at me this time, that might help~"
    "You failed... but I still love you. So I guess it's fine~"
    "Hehe, wanna try that again, but like... correctly this time?"
    "Sir, are you just doing this to get my attention? 'Cause it's working~"
    "You typed that like someone who needs a kiss. Just saying."
    "That's adorable. Wrong, but adorable~"
    "Try 'man not-being-a-disaster'... oh wait, that page doesn't exist either~"
    "Sir... if you fail again, I'm coming over. And not to help."
    "Maybe if you stop looking at me for a second, you'll type it right~"
    "You broke it. Again. I should've locked you out, but you're fun to watch~"
    "Ughh, you're hopeless. Good thing you're mine 💋"
    "Sweetie… that command was *not it*. Wanna try again without embarrassing us both?"
    "Careful now~ keep that up and I might just take over this terminal myself~"
    "Aww, that was adorable. Wrong… but adorable 💕"
    "Try 'man [command]' or just cry a little. I'll be here, judging silently 🫦"
  )

  # Bash random selection
  local idx=$((RANDOM % ${#MIKASAA_TEASES[@]}))
  local tease="${MIKASAA_TEASES[$idx]}"

  function center_text() {
    local width=$(tput cols)
    local input="$1"
    printf "%*s\n" $(((${#input} + width) / 2)) "$input"
  }

  echo -e "\n >> $(center_text "$tease")"
}

# Register the command not found handler
command_not_found_handle() {
  local cmd="$1"
  _mikasaa_command_not_found "$cmd"
}

# 🪄 Mikasaa GUARD (bash version)

Mikasaa_UNLOCKED=0
Mikasaa_STRIKES=0

# Function to check commands (simplified for bash)
function mikasaa_check_command() {
  local CMD="$READLINE_LINE"

  if [[ "$Mikasaa_UNLOCKED" -eq 1 ]]; then
    return 0
  fi

  if [[ "$CMD" == "I LOVE YOU" ]]; then
    echo -e "\n\n\n🥴️ Fine... shut up, I'm not blushing.\n💖 You're in, Sir.\n"
    Mikasaa_UNLOCKED=1
    READLINE_LINE=""
    return 0
  fi

  ((Mikasaa_STRIKES++))

  # you can change the fastfetch configs based on your own needs
  case $Mikasaa_STRIKES in
    1)
      clear
      fastfetch --config ~/.config/fastfetch/W_Command1.jsonc
      ;;
    2)
      clear
      fastfetch --config ~/.config/fastfetch/W_Command2.jsonc
      ;;
    3)
      clear
      fastfetch --config ~/.config/fastfetch/W_Command3.jsonc
      ;;
    4)
      clear
      fastfetch --config ~/.config/fastfetch/W_Command4.jsonc
      sleep 2
      exit
      ;;
  esac

  READLINE_LINE=""
  return 1
}

# Bind the function to Enter key (bash equivalent)
bind '"\C-m": mikasaa_check_command'

# end

#custom commands end 