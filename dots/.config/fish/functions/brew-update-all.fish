function brew-update-all
    echo "starting..."
    brew update; brew upgrade; brew cleanup; brew doctor
end