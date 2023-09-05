if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
<<<<<<< HEAD
#$HOME/.local/bin/colorscript -r
=======
$HOME/.local/share/asciiart/./panes
>>>>>>> 21ed051 (initial)

#  ┌─┐┬  ┬┌─┐┌─┐
#  ├─┤│  │├─┤└─┐
#  ┴ ┴┴─┘┴┴ ┴└─┘
alias mirrors="sudo reflector --verbose --latest 5 --country 'United States' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias mantenimiento="yay -Sc && sudo pacman -Scc"
alias purga="sudo pacman -Rns $(pacman -Qtdq) ; sudo fstrim -av"
alias update="paru -Syu --nocombinedupgrade"

alias vm-on="sudo systemctl start libvirtd.service"
alias vm-off="sudo systemctl stop libvirtd.service"

alias musica="ncmpcpp"

alias ls='lsd -a --group-directories-first'
alias ll='lsd -la --group-directories-first'
#alias ls='exa --group-directories-first'
#alias la='exa -a'
alias lt="exa --tree -D -L 2 -I 'ache|log|logs|node_modules|vendor'"
alias ltt="exa --tree -D -L 3 -I 'ache|log|logs|node_modules|vendor'"
alias lttt="exa --tree -D -L 4 -I 'ache|log|logs|node_modules|vendor'"
alias ltttt="exa --tree -D -L 5 -I 'ache|log|logs|node_modules|vendor'"

alias netmgr='nmtui'

alias vol='alsamixer'

function fish_greeting
<<<<<<< HEAD
end
=======
end
fish_add_path /home/nihar/.spicetify
>>>>>>> 21ed051 (initial)
