#/bin/bash
echo "[-] Download neovim [-]"
apt-get install -y neovim
echo "done!"

echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
fc-cache -fv
echo "done!"
