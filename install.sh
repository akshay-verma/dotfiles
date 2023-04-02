# Install Script
sudo -v

# Install Xcode command line tools
sudo xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Add brew to PATH
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/akshayv/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
