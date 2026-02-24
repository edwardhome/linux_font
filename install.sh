sudo apt update && sudo apt upgrade -y
sudo apt-get install language-pack-zh-han* git vim-gtk3 wget curl make gcc davfs2 samba exfat-fuse nfs-common tasksel fcitx5 fcitx5-configtool fcitx5-chinese-addons fcitx5-frontend-all fcitx5-chewing gnome-tweak-tool
sudo cp Microsoft_font/* /usr/local/share/fonts
sudo cp PingFangTC/*  /usr/local/share/fonts
sudo cp powerlevel10k/* /usr/local/share/fonts
#微軟核心字體
sudo apt-get install cabextract fonts-linuxlibertine ttf-mscorefonts-installer -y
#移除其他字體 remove other fonts
sudo apt-get --purge remove fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-color-emoji fonts-noto-mono fonts-noto-unhinted fonts-arphic-ukai fonts-arphic-uming fonts-beng fonts-beng-extra fonts-freefont-ttf fonts-gubbi fonts-gujr fonts-gujr-extra fonts-guru fonts-guru-extra fonts-indic fonts-kacst fonts-kacst-one fonts-kalapi fonts-khmeros-core fonts-knda fonts-lao fonts-liberation2 fonts-lklug-sinhala fonts-lohit-beng-assamese fonts-lohit-beng-bengali fonts-lohit-deva fonts-lohit-gujr fonts-lohit-guru fonts-lohit-knda fonts-lohit-mlym fonts-lohit-orya fonts-lohit-taml fonts-lohit-taml-classical fonts-lohit-telu fonts-mlym fonts-nakula fonts-nanum fonts-navilu fonts-orya fonts-orya-extra fonts-pagul fonts-sahadeva fonts-samyak-deva fonts-samyak-gujr fonts-samyak-mlym fonts-samyak-taml fonts-sil-abyssinica fonts-sil-padauk fonts-smc fonts-smc-anjalioldlipi fonts-smc-chilanka fonts-smc-dyuthi fonts-smc-karumbi fonts-smc-keraleeyam fonts-smc-manjari fonts-smc-meera fonts-smc-rachana fonts-smc-raghumalayalamsans fonts-smc-suruma fonts-smc-uroob fonts-symbola fonts-takao-pgothic fonts-taml fonts-telu fonts-telu-extra fonts-thai-tlwg fonts-tibetan-machine fonts-tlwg-garuda fonts-tlwg-garuda-ttf fonts-tlwg-kinnari fonts-tlwg-kinnari-ttf fonts-tlwg-laksaman fonts-tlwg-laksaman-ttf fonts-tlwg-loma fonts-tlwg-loma-ttf fonts-tlwg-mono fonts-tlwg-mono-ttf fonts-tlwg-norasi fonts-tlwg-norasi-ttf fonts-tlwg-purisa fonts-tlwg-purisa-ttf fonts-tlwg-sawasdee fonts-tlwg-sawasdee-ttf fonts-tlwg-typewriter fonts-tlwg-typewriter-ttf fonts-tlwg-typist fonts-tlwg-typist-ttf fonts-tlwg-typo fonts-tlwg-typo-ttf fonts-tlwg-umpush fonts-tlwg-umpush-ttf fonts-tlwg-waree fonts-tlwg-waree-ttf fonts-ubuntu ttf-ancient-fonts-symbola ttf-ubuntu-font-family -y
sudo fc-cache -f -v
sudo dconf load /org/gnome/terminal/ < gnome_terminal_settings.txt
sudo dpkg-reconfigure locales
