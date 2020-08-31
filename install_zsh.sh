# Install zsh
sudo apt-get install zsh
# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Choose Theme

# Install Theme

# Power10k 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

mv .zshrc ~/.zshrc

p10k configure

# Set Font
mv ./Fonts/*.ttf ~/.local/share/fonts
