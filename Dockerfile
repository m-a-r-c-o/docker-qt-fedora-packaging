FROM fedora:24
MAINTAINER Marco Cyriacks <marco@cyriacks.net>

RUN dnf -y upgrade
RUN dnf install -y fedora-packager fedora-review
RUN dnf install -y qt5-qtbase-devel qt5-qtwebkit-devel qt5-qtsvg-devel libmarkdown-devel
