## Zsh Settings ###############################################################
# Esc-q  : Push the current buffer onto the buffer stack and clear the buffer.
# Esc-a  : Push the contents of the buffer on the buffer stack and execute it.
# Ctrl-r : Search backward incrementally for a specified string.

# Autoloading functions
autoload -Uz compinit
compinit
autoload colors
colors

# Treat the '#', '~' and '^' characters as part of patterns for file name generation.
setopt extended_glob

# Print a carriage return befor new prompt.
setopt promptcr

# Show file types in completion list.
setopt list_types

# Clever del after param completion.
setopt auto_param_keys

# Print eight bit characters literally in completion lists.
setopt print_eight_bit

# Turn off annoying beep sound.
setopt no_beep

# Expand substitutions in prompts.
setopt prompt_subst

# History Settings
# Number of storing histories to memory
HISTSIZE=100

# Not to store histories to a file
HISTFILE=/dev/null
SAVEHIST=0

# Not to store a same command
setopt hist_ignore_dups

# Never save dupulicate of existing hist entry.
setopt hist_ignore_all_dups

# Share the same history file in other shells.
setopt share_history

# Save timestamp to history file.
#setopt extended_history

# If the command is the name of a directory,  perform "cd" command to that directory.
setopt auto_cd

# Make "cd" push the old directory onto the directory stack.
setopt auto_pushd

# Don't push multiple copeis of the same directory onto the directory stack.
setopt pushd_ignore_dups

# Try to correct the spelling of commands.
setopt correct

# Try to make the completion list smaller.
setopt list_packed

# Manipulate keymaps and key bindings settings
# bindkey [options]
#   -e : Emacs like key bindings
#   -v : Vi like key bindings
bindkey -e

export PROMPT='%F{green}%n@%m%(!,#,$) %f'
export RPROMPT='%(?,%F{white},%F{red})%25</...<%/%f'

alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias grep='grep --color'
alias less='less -R'
which screen &> /dev/null && alias screen='screen -U'

