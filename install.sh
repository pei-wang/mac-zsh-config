# Power fonts
git clone https://github.com/powerline/fonts.git --depth=1
# cd to folder
cd fonts
# run install shell
./install.sh
rm -rf fonts

# update the theme
sed -E -i '' 's/.*ZSH_THEME=".*"/ZSH_THEME="agnoster"/g'

# add syntax highlighting
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

sed -E -i '' 's/.*plugins(.*)/plugins=(git zsh-syntax-highlighting)/g'

# remove the username prefix
echo "prompt_context(){}" >> ~/.zshrc

source ~/.zshrc
