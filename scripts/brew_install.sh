set -x

if [ ! -f /usr/local/bin/brew ]
then
  echo "Homebrew is not installed. Installing now..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew tap homebrew/bundle
brew bundle --no-lock --file="$1" 
