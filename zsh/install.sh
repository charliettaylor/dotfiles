cp ./.zshrc ~/.zshrc

if command -v zsh &> /dev/null; then
	# run this manually, sudo annoying
	# sudo apt install zsh
	# sudo chsh -s $(which zsh)
	exec zsh
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
	echo "zsh is already installed, sourcing it"
fi

source ~/.zshrc
