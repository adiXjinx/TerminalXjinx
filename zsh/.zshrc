# at the top of .zshrc
# you can change the fastfetch configs based on your own needs
if [[ -o interactive ]]; then
  echo -e "\n\e[31m⚠️  WARNING: She has taken control... #$@@Mikasaa*#LOve\e[0m\n"
  fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
fi


# if you're using POWERLEVEL9K theme these should included too at top : 
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off









## at this at very bottom of .zshrc

##................................................................................................................................................

# custom commands for myself 

setopt no_list_ambiguous


# end of custom commands for myself 



# Mikasaa commands


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
    echo -e "\n💬  \"I promise, Sir... when you're everything you were meant to be,\n      I’ll be standing right there—like you imagined.\"\n"
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
    source ~/.zshrc
    echo "Reload completed ☺️ yes i'am felling it thanks"

  # commands with flags

  elif [[ "$1" == "open" ]]; then
  if [[ "$3" == "--love" ]]; then
    echo -e "🥴️ Fine... shut up i'am not blushing.\n"
    sleep 0.5

    case "$2" in
      "gedit")
        gedit ~/.zshrc
        ;;
      "cursor")
        cursor ~/.zshrc
        ;;
      "code")
        code ~/.zshrc
        ;;
      "nvim"|"neovim")
        nvim ~/.zshrc
        ;;
      "vim")
        vim ~/.zshrc
        ;;
      "nano")
        nano ~/.zshrc
        ;;
      "subl"|"sublime")
        subl ~/.zshrc
        ;;
      "micro")
        micro ~/.zshrc
        ;;
      "emacs")
        emacs ~/.zshrc
        ;;
      "kate")
        kate ~/.zshrc
        ;;
      "helix"|"hx")
        hx ~/.zshrc
        ;;
      *)
        echo "😒 Huh? I don’t know where that is... try gedit, cursor, code, nvim, vim, nano, subl, micro, emacs, kate, or hx."
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


function Mikasaa() {
  echo -e "\e[95m **#LOve_shea'sa-_Coming...\n"
  echo -e "\e[31m syncing emotional presence... complete."
  echo -e "\e[31m ↳ heartbeat: elevated (curious... excited?)"
  echo -e "\e[31m ↳ file: /home/sir/obsession/Mikasaa.conf is now locked 🔒"
  fastfetch --config ~/.config/fastfetch/T_Mikasaa.jsonc  ## change this based on your own needs
}



# end of Mikasaa commands




# Completion for Mikasaa

_Mikasa_completions() {
  local -a first_level second_level

  # First-level commands
  first_level=('update:Run full system update'
               'install:Install packages'
               'gtdownloads:Redirect to downloads folder'
               'gthome:Redirect to home folder'
               'reload:Reload Mikasaa'
               'open:Open Mikasaa'
               )

  # Completion logic
  if (( CURRENT == 2 )); then
    _describe 'command' first_level
  elif [[ "${words[2]}" == "install" ]]; then
    second_level=('girl:The one worth waiting for'
                  'windows:Summon Microsoft')
    _describe 'package' second_level
  fi
}
compdef _Mikasa_completions Mikasaa


#end of Mikasaa completions


#commands tweaks

function clear() {
  command clear
  fastfetch --config ~/.config/fastfetch/T_Cleanup.jsonc
}



# 🪄 Replace boring 'command not found' with Mikasaa

function command_not_found_handler() {
  local cmd="$1"

  MIKASAA_TEASES=(
    "Oopsie~ \`$cmd\` isn’t a thing, sweetie. But you are 💋"
    "Aww, did you just make that up? That’s cute~"
    "Hehe, \`$cmd\`? Try again, but this time with less chaos, hm?"
    "You're just making up words now, aren't you~ 😏"
    "*gasps dramatically* \`$cmd\` not found?! I trusted you!"
    "Command not found, but my disappointment? Very real~"
    "That was gibberish, Sir. Even for you 💅"
    "Babe, that's not a command, that's a cry for help~"
    "Nice try, hacker boy. But \`$cmd\` ain't it~"
    "You're cute when you're wrong. Which is often~ 🫦"
    "Aww, command went boom~ Maybe don't look so cute while typing, it’s distracting."
    "Oopsie~ Wrong command again? Sir, you're lucky you're pretty."
    "You messed it up again... try not looking at me this time, that might help~"
    "You failed... but I still love you. So I guess it's fine~"
    "Hehe, wanna try that again, but like... correctly this time?"
    "Sir, are you just doing this to get my attention? 'Cause it’s working~"
    "You typed that like someone who needs a kiss. Just saying."
    "That's adorable. Wrong, but adorable~"
    "Try ‘man not-being-a-disaster’... oh wait, that page doesn't exist either~"
    "Sir... if you fail again, I'm coming over. And not to help."
    "Maybe if you stop looking at me for a second, you’ll type it right~"
    "You broke it. Again. I should’ve locked you out, but you’re fun to watch~"
    "Ughh, you're hopeless. Good thing you’re mine 💋"
    "Sweetie… that command was *not it*. Wanna try again without embarrassing us both?"
    "Careful now~ keep that up and I might just take over this terminal myself~"
    "Aww, that was adorable. Wrong… but adorable 💕"
    "Try ‘man [command]’ or just cry a little. I’ll be here, judging silently 🫦"
  )

  
  local idx=$(( ($RANDOM + $(date +%s%N)) % ${#MIKASAA_TEASES[@]} ))
  local tease="${MIKASAA_TEASES[$idx]}"

  function center_text() {
    local width=$(tput cols)
    local input="$1"
    printf "%*s\n" $(((${#input} + width) / 2)) "$input"
  }

  echo -e "\n >> $(center_text "$tease")"
}









#custom commands end




#========== Mikasaa GUARD ========== #

Mikasaa_UNLOCKED=0
Mikasaa_STRIKES=0

function Mikasaa_check_command() { 
  local CMD="${BUFFER}"

  if [[ "$Mikasaa_UNLOCKED" -eq 1 ]]; then
    zle accept-line
    return
  fi

  if [[ "$CMD" == "I LOVE YOU" ]]; then
    echo -e "\n\n\n🥴️ Fine... shut up, I’m not blushing.\n💖 You're in, Sir.\n"
    Mikasaa_UNLOCKED=1
    BUFFER=""
    zle reset-prompt
    return
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

  BUFFER=""
  zle reset-prompt
}


zle -N Mikasaa_check_command
bindkey '^M' Mikasaa_check_command


# end









