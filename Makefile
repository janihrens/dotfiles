default: all

all: laptop work pc



wifistick: dkms compiletools 
	apt-get -y install rtl8812au-dkms

vim:
	apt-get -y install vim

emacs::
	apt-get -y install emacs

dkms:
	apt-get -y install dkms

coding: compiletools
	apt-get -y install exuberant-ctags git

openlb: compiletools
	apt-get -y install paraview

compiletools:
	apt-get -y install build-essential gcc g++ make cmake openmpi-bin openmpi-doc libopenmpi-dev

clitools: newsbeuter
	apt-get -y install feh curl lynx elinks  mc ranger htop imagemagick gnuplot abook when rxvt-unicode surfraw

newsbeuter: 
	apt-get -y install newsbeuter
	# set up symlinks here
	
i3:
	apt-get -y install i3 i3lock i3status i3-wm i3-wm-dbg
	pip3 install py3status


python3:
	apt-get -y install python3-pip python3-numpy python3-scipy python3-matplotlib

python2:
	apt-get -y install python-pip python-numpy python-scipy python-matplotlib

fonts:
	apt-get -y install fonts-inconsolata

tex:
	apt-get -y install texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-base texlive-latex-base


up2date:
	apt-get update
	apt-get -y upgrade

boinc:
	apt-get -y install boinc boinc-manager

dropbox:
	apt-get -y install nautilus-dropbox

keepass:
	apt-get -y install keepass2

media:
	apt-get -y install vlc mpv
	PLAYERCTLRLS="https://api.github.com/repos/acrisci/playerctl/releases"
	DLURL=$(curl -s $PLAYERCTLRLS | grep browser_download_url | grep .deb | head -n 1 | cut -d '"' -f 4)
	wget $DLURL
	dpkg -i playerctl*.deb
	rm playerctl*.deb

email:
	apt-get -y install mu4e maildir-utils-extra

# chromium
# apt-get -y install chromium-browser

chrome:
	#from http://askubuntu.com/questions/79280/how-to-install-chrome-browser-properly-via-command-line
	apt-get -y install libxss1 libappindicator1 libindicator7
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i google-chrome*.deb
	rm google-chrome*.deb
