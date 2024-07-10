# Power fonts
git clone https://github.com/powerline/fonts.git --depth=1
# cd to folder
cd fonts
# run install shell
zsh ./install.sh
cd ..
rm -rf fonts


# add syntax highlighting
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
git clone https://github.com/zsh-users/zsh-autosuggestions

sed -E -i '' 's/.*plugins(.*)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

# remove the username prefix
echo "prompt_context(){}" >> ~/.zshrc

# tldr
brew install tldr

# autoJump
brew install autojump
echo "[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh" >> ~/.zshrc

git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
cd oh-my-zsh-agnoster-fcamblor/
./install


# update the theme
sed -E -i '' 's/.*ZSH_THEME=".*"/ZSH_THEME="agnoster"/g' ~/.zshrc
source ~/.zshrc
