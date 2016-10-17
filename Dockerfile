FROM fedora:24
MAINTAINER Marco Cyriacks <marco@cyriacks.net>

RUN dnf -y upgrade
RUN dnf -y group install 'Development Tools'
RUN dnf -y install gcc-c++
RUN dnf -y install fedora-packager
RUN dnf -y install 'dnf-command(builddep)'

RUN rpmdev-setuptree

# Install dependencies for build. The image has to be rebuild if the
#  dependencies of the application have changed.
#COPY mdnote.spec /root/rpmbuild/SPECS
#RUN dnf -y builddep /root/rpmbuild/SPECS/mdnote.spec

