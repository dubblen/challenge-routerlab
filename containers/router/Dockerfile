FROM nestybox/ubuntu-bionic-systemd

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y nano openssh-server

COPY setup-firewall.sh /usr/local/bin/setup-firewall.sh

RUN chmod +x /usr/local/bin/setup-firewall.sh

COPY firewall.service /etc/systemd/system/firewall.service

RUN chmod 644 /etc/systemd/system/firewall.service

RUN systemctl enable firewall
RUN systemctl enable ssh
