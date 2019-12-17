if grep -Fxq "$(which zsh)" /etc/shells
then
    echo "$(which zsh) already present in /etc/shells "
else
    sudo sh -c "echo $(which zsh) >> /etc/shells"
fi

chsh -s $(which zsh)    

