#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \w]\$ '

# Import colorscheme from 'wal' asynchronously
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

export EDITOR='nvim'
export PATH=${HOME}/miniconda3/bin:$PATH

alias i3edit='$EDITOR ~/.config/i3/config'
alias connect-hd350='bluetoothctl connect 00:1B:66:EA:AC:99'
alias server='ssh svr@192.168.1.16'
alias clear-clipboard='pkill greenclip && greenclip clear && greenclip daemon &'
alias sddm-wallpaper='sudo nano /usr/share/sddm/themes/breeze/theme.conf.user'
alias histgrep='history | grep'
alias reload='source ~/.bashrc'
alias cls='clear; ls -a'
alias vim='nvim'
alias psgrep='ps -e | grep'
alias brightness='ddcutil setvcp 10'
alias startvnc='sudo systemctl start vncserver@:3'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/drew/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/drew/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/drew/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/drew/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

