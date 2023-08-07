FROM nestybox/ubuntu-bionic-systemd

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y nano openssh-server

COPY setup-routes.sh /usr/local/bin/setup-routes.sh

RUN chmod +x /usr/local/bin/setup-routes.sh

COPY routes.service /etc/systemd/system/routes.service

RUN chmod 644 /etc/systemd/system/routes.service

RUN systemctl enable routes
RUN systemctl enable ssh

