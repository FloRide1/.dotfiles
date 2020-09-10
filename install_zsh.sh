# Install zsh
sudo apt-get install zsh
chsh -s /bin/zsh ${USER}
# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Choose Theme

# Install Theme

# Power10k 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
source .zshrc

p10k configure

source .zshrc
cp .zshrc ~/.zshrc

# Set Font
mv ./Fonts/*.ttf ~/.local/share/fonts
