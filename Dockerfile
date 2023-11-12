FROM ubuntu:20.04
RUN apt-get update && \
	apt-get install -y \
		iputils-ping \
		openssh-server \
		sudo \
RUN mkdir /var/run/sshd
COPY id_ed25519.pub /root/.ssh/authorized_keys
ENV TERM xterm
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-4"]
