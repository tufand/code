FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

# Environment variables
ENV domain localhost
ENV LC_CTYPE C.UTF-8

# Setup scripts for LibreOffice Online
ADD /scripts/start-libreoffice.sh /
ADD /scripts/install-libreoffice.sh /
RUN /bin/bash -c /install-libreoffice.sh

EXPOSE 9980

# switch to lool user
USER 101

# Entry point
CMD bash start-libreoffice.sh
