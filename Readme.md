# 🎭 TerminalXjinx - Mikasa Terminal Customization

A beautiful terminal customization setup featuring Mikasa-themed fastfetch displays and custom shell commands. Perfect for anime lovers who want their terminal to reflect their personality!

<blockquote class="reddit-embed-bq" style="height:500px" data-embed-height="546"><a href="https://www.reddit.com/r/arch/comments/1lxae6n/noww_can_your_terminal_do_this/">NowW, can your terminal do this?? 🥴️</a><br> by<a href="https://www.reddit.com/user/adiXjinx/">u/adiXjinx</a> in<a href="https://www.reddit.com/r/arch/">arch</a></blockquote><script async="" src="https://embed.reddit.com/widgets.js" charset="UTF-8"></script>

## ✨ What's Included

- **Custom Fastfetch Themes**: Multiple terminal display configurations
- **Mikasa Shell Commands**: Fun interactive commands with personality
- **Shell Configuration**: Enhanced experience for both Zsh and Bash users
- **Easy Customization**: Simple setup for non-technical users

## 🚀 Quick Start

### Prerequisites

- Linux system (Ubuntu/Debian recommended)
- Zsh or Bash shell
- Fastfetch installed



<img width="1329" height="676" alt="image" src="https://github.com/user-attachments/assets/77bb4a4f-8c58-46a1-b594-cb748e603d58" />







### Installation

1. **Clone this repository**

   ```bash
   git clone https://github.com/yourusername/TerminalXjinx.git
   cd TerminalXjinx
   ```

2. **Install Fastfetch** (if not already installed)

   ```bash
   # Ubuntu/Debian
   sudo apt install fastfetch

   # Or build from source
   git clone https://github.com/fastfetch-cli/fastfetch.git
   cd fastfetch
   mkdir build && cd build
   cmake ..
   make
   sudo make install
   ```

3. **Setup Fastfetch Configurations**

   ```bash
   # Create fastfetch config directory
   mkdir -p ~/.config/fastfetch

   # Copy configuration files
   cp fastfetch/*.jsonc ~/.config/fastfetch/
   ```

4. **Setup Shell Configuration**

   **For Zsh users:**

   ```bash
   # Backup your existing .zshrc
   cp ~/.zshrc ~/.zshrc.backup

   # Add the custom parts to your existing .zshrc
   # Copy these sections from the provided zsh/.zshrc file:

   # 1. Add this at the TOP of your .zshrc (for startup display):
   if [[ -o interactive ]]; then
     echo -e "\n\e[31m⚠️  WARNING: She has taken control... #$@@Mikasaa*#LOve\e[0m\n"
     fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
   fi

   # 2. Add the Mikasaa commands section (copy the entire function from zsh/.zshrc)
   # 3. Add the completion section for Mikasaa commands

   # Or use this command to append the custom parts:
   cat zsh/.zshrc | grep -A 100 "custom commands for myself" >> ~/.zshrc
   ```

   **For Bash users:**

   ```bash
   # Backup your existing .bashrc
   cp ~/.bashrc ~/.bashrc.backup

   # Add the custom parts to your existing .bashrc
   # Copy these sections from the provided bash/.bashrc file:

   # 1. Add this at the TOP of your .bashrc (for startup display):
   if [[ $- == *i* ]]; then
     echo -e "\n\e[31m⚠️  WARNING: She has taken control... #$@@Mikasaa*#LOve\e[0m\n"
     fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
   fi

   # 2. Add the Mikasaa commands section (copy the entire function from bash/.bashrc)
   # 3. Add the completion section for Mikasaa commands

   # Or use this command to append the custom parts:
   cat bash/.bashrc | grep -A 100 "custom commands for myself" >> ~/.bashrc
   ```

5. **Setup Custom Commands**

   ```bash
   # Copy the update script to system path
   sudo cp addisnals/Mikasa-update /usr/local/bin/
   sudo chmod +x /usr/local/bin/Mikasa-update
   ```

6. **Setup Custom Image** (Optional)

   ```bash
   # Copy your preferred image to the config path
   cp image/mikaa.png ~/Downloads/mikasa.png
   ```

7. **Reload Your Shell**

   ```bash
   # For Zsh users:
   source ~/.zshrc

   # For Bash users:
   source ~/.bashrc
   ```

## 🎨 Available Themes

### Fastfetch Configurations

- **T_Startup.jsonc**: Default startup display
- **T_Mikasaa.jsonc**: Mikasa-themed display
- **T_Cleanup.jsonc**: Clean, minimal display
- **W_Command1-4.jsonc**: Various command displays
- **config.jsonc**: Main configuration file

### How to Switch Themes

Edit your shell configuration file and change the fastfetch config path:

```bash
# Change this line in .zshrc (Zsh) or .bashrc (Bash)
fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
# To:
fastfetch --config ~/.config/fastfetch/T_Mikasaa.jsonc --pipe false
```

## 🎯 Custom Commands

### Mikasaa Commands

Once installed, you can use these fun commands:

- `Mikasaa` - Display Mikasa theme
- `Mikasaa update` - Run system update
- `Mikasaa gtdownloads` - Go to Downloads folder
- `Mikasaa gthome` - Go to Home folder
- `Mikasaa reload` - Reload configuration
- `Mikasaa open [editor] --love` - Open zsh or bash configs with love ❤️

### Available Editors for `Mikasaa open`

- `gedit`, `cursor`, `code`, `nvim`, `vim`, `nano`
- `subl`, `micro`, `emacs`, `kate`, `helix`

## 🎨 Customization Guide

### Changing the Image

1. Replace `~/Downloads/mikasa.png` with your preferred image
2. Update the path in `~/.config/fastfetch/config.jsonc`:
   ```json
   "source": "/path/to/your/image.png"
   ```

### Customizing Colors

Edit any `.jsonc` file in `~/.config/fastfetch/` to change colors:

```json
"keyColor": "green"  // Available: red, green, blue, yellow, magenta, cyan, white
```

### Adding Your Own Commands

Edit your shell configuration file and add your functions in the "custom commands" section:

```bash
function MyCommand() {
    echo "Your custom command here!"
}
```

### For Power Users: Advanced Customization

If you want to integrate this with existing themes like Oh My Zsh or Powerlevel10k:

1. **With Oh My Zsh**: Add the custom parts after the Oh My Zsh initialization
2. **With Powerlevel10k**: Add the startup display before the instant prompt
3. **With custom prompts**: Integrate the Mikasaa commands with your existing prompt setup

**Example for Powerlevel10k users**:

```bash
# Add this BEFORE the instant prompt line in your .zshrc
if [[ -o interactive ]]; then
  echo -e "\n\e[31m⚠️  WARNING: She has taken control... #$@@Mikasaa*#LOve\e[0m\n"
  fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
fi

# Your existing Powerlevel10k setup
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
```

**Example for Bash users with custom prompts**:

```bash
# Add this at the top of your .bashrc
if [[ $- == *i* ]]; then
  echo -e "\n\e[31m⚠️  WARNING: She has taken control... #$@@Mikasaa*#LOve\e[0m\n"
  fastfetch --config ~/.config/fastfetch/T_Startup.jsonc --pipe false
fi

# Your existing bash prompt setup
PS1='\w\$ '
```

### Package Manager Customization

Edit `/usr/local/bin/Mikasa-update` to use your preferred package manager:

```bash
# For Arch Linux (pacman)
pacman -Syu

# For Fedora (dnf)
dnf update

# For macOS (brew)
brew update && brew upgrade
```

## 🔧 Troubleshooting

### Fastfetch Not Found

```bash
# Install fastfetch manually
git clone https://github.com/fastfetch-cli/fastfetch.git
cd fastfetch
mkdir build && cd build
cmake ..
make
sudo make install
```

### Permission Denied

```bash
# Fix script permissions
sudo chmod +x /usr/local/bin/Mikasa-update
```

### Image Not Displaying

1. Check if the image path is correct in `config.jsonc`
2. Ensure the image file exists
3. Try a different image format (PNG recommended)

### Commands Not Working

```bash
# Reload your shell configuration
# For Zsh users:
source ~/.zshrc

# For Bash users:
source ~/.bashrc
```

## 🎭 Theme Examples

### Mikasa Theme

- Pink/magenta color scheme
- Anime character display
- Emotional command responses

### Clean Theme

- Minimal display
- Professional appearance
- Standard system information

### Startup Theme

- System overview
- Hardware information
- Software details

## 🤝 Contributing

Feel free to customize and share your themes! To contribute:

1. Create your own `.jsonc` configuration
2. Add custom commands to `.zshrc`
3. Share your customizations

## 📝 License

This project is open source. Feel free to modify and distribute!

## 💝 Support

If you love this setup, consider:

- ⭐ Starring this repository
- 🍕 Buying me a coffee
- 🎭 Sharing your customizations

---

**Remember**: This is your terminal now. Make it reflect your personality! 🎭✨
