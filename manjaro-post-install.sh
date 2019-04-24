## verifica quais mirrors de repositorios são mais rápidas, faz um update do sistema
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu  

# instala alguns pacotes importantes
sudo pacman -S evince atom base-devel nemo nemo-fileroller nemo-preview r \
    rhythmbox shotwell telegram-desktop thunderbird tk vlc zsh \
    texlive-most texlive-langextra texmaker gedit \
    jdk-openjdk jdk8-openjdk emacs scala clojure maven gradle ntp \
    gcc-fortran transmission-gtk conky kitty rofi ttf-font-awesome \
    arandr lightdm-gtk-greeter-settings perl-json-xs xclip \
    gtk-engine-murrine gtk-engines ed gnome-disk-utility \
    ttf-fira-code --noconfirm

# sync clock
timedatectl set-ntp true
sudo ntpdate -q 0.rhel.pool.ntp.org  
sudo systemctl restart ntpd                                      

sudo pacman -R epdfview palemoon-bin --noconfirm
xdg-mime default evince.desktop application/pdf

# torna o zsh o shell padrão
chsh -s $(which zsh)

# instalar oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# to-do: add to .zshrc

# pure prompt https://github.com/sindresorhus/pure

# instalar pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
pip install --user i3ipc
echo "export PATH=~/.local/bin:\$PATH" >> ~/.zshrc

# yaourt: ferramenta para instalar pacotes da AUR
## chave do dropbox
gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
yay -S google-chrome rstudio-desktop-bin srm dropbox nemo-dropbox \
    skypeforlinux-stable-bin flacon perl-anyevent-i3 whatsapp-nativefier \
    nerd-fonts-complete nano-syntax-highlighting-git leiningen \
    font-manager libappindicator-gtk3 gnomecanvas-perl gnome-vfs-perl \
    gnome-perl perl-gnome2-wnck perl-goo-canvas perl-gtk2-imageview \
    perl-gtk2-unique shutter --noconfirm
