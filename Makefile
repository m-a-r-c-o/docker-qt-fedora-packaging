
-include config.mk

info:
	@echo "Makefile for docker image"
	@echo ""

run:
	-sudo docker rm -f $(CONTAINER_NAME)
	sudo docker run -it \
	    --name $(CONTAINER_NAME) \
	    fedora-rpmbuild:$(FEDORA_RELEASE) /bin/bash

stop:
	sudo docker stop $(CONTAINER_NAME)

image:
	sudo docker build -t fedora-rpmbuild:$(FEDORA_RELEASE) \
	    .


# generated default configuration file
config.mk:
	@echo "First time run. Configuration file config.mk is generated..."
	@echo " Use it and apply your local settings. Do NOT add it to version control!"
	@echo ""
	@echo "# .............................................................................." > $@
	@echo "# DO NOT add this file to version control. It is only used to set your local" >> $@
	@echo "#  preferences for using this Makefile!" >> $@
	@echo "# .............................................................................." >> $@
	@echo "" >> $@
	@echo "# .............................................................................." >> $@
	@echo "# Settings..." >> $@
	@echo "FEDORA_RELEASE := 24" >> $@
	@echo "CONTAINER_NAME := rpmbuild" >> $@
	@echo "SELINUX_SUFFIX := :Z" >> $@
	@echo "# .............................................................................." >> $@

