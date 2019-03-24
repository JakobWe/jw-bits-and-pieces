sudo apt install texlive texlive-fonts-extra latexmk texlive-lang-german texlive-science -y


sudo umask 022
sudo cp -a tuddesign/. /usr/share/texmf

sudo texhash /usr/share/texmf

sudo updmap-sys --enable Map 5ch.map
sudo updmap-sys --enable Map 5fp.map
sudo updmap-sys --enable Map 5sf.map

sudo updmap-sys --listmaps | egrep "^Map[[:blank:]]*5"
