## verifica quais mirrors de repositorios são mais rápidas, faz um update do sistema
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu  

# instala alguns pacotes importantes
sudo pacman -S evince atom base-devel nemo nemo-fileroller nemo-preview r \
    rhythmbox shotwell telegram-desktop thunderbird tk vlc yaourt zsh \ 
    texlive-most texlive-langextra texmaker virtualbox gedit \ 
    jdk-openjdk jdk8-openjdk emacs scala clojure maven gradle caprine ntp \ 
    gcc-fortran transmission-gtk rodi conky ttf-font-awesome \ 
    arandr lightdm-gtk-greeter-settings perl-json-xs xclip \ 
    gtk-engine-murrine gtk-engines ed gnome-disk-utility --noconfirm

sudo pacman -R hexchat eviewpdf palemoon-bin --noconfirm
xdg-mime default evince.desktop application/pdf

# torna o zsh o shell padrão
chsh -s $(which zsh)

# instalar oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# pure prompt https://github.com/sindresorhus/pure

# instalar pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
pip install --user i3ipc

# yaourt: ferramenta para instalar pacotes da AUR
## chave do dropbox
gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
yaourt -S google-chrome rstudio-desktop-bin srm dropbox nemo-dropbox overgrive \
    skypeforlinux-stable-bin flacon perl-anyevent-i3 whatsapp-nativefier \
    nerd-fonts-complete nano-syntax-highlighting-git nerd-fonts-complete \
    leiningen font-manager --noconfirm

# instala shutter
yaourt -S gnomecanvas-perl gnome-vfs-perl --noconfirm
current_dir=$PWD
cd /usr/lib
sudo rm libORBit-2.so.0
sudo ln -s libORBit-2.so.0.1.0 libORBit-2.so.0
cd $current_dir
yaourt -S gnome-perl perl-gnome2-wnck perl-goo-canvas perl-gtk2-imageview \
    perl-gtk2-unique shutter --noconfirm
