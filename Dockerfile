FROM fedora:24
MAINTAINER Marco Cyriacks <marco@cyriacks.net>

RUN dnf -y upgrade
RUN dnf -y group install 'Development Tools'
RUN dnf -y install gcc-c++
RUN dnf -y install fedora-packager
RUN dnf -y install 'dnf-command(builddep)'
RUN dnf -y install qt5-qtbase-devel qt5-qtwebkit-devel qt5-qtsvg-devel libmarkdown-devel

RUN rpmdev-setuptree

