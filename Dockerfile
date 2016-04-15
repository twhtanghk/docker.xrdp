FROM debian
RUN	apt-get update && \
	apt-get -y install lxde-core lxterminal xrdp iceweasel && \
	apt-get clean && \
	apt-get -y remove && \
	ln -s /usr/share/doc/xrdp/rsakeys.ini /etc/xrdp && \
	useradd -ms /bin/bash myroot && \
	echo 'user:password' |chpasswd
EXPOSE 3389
ENTRYPOINT /etc/init.d/xrdp start && tail -F /var/log/xrdp-sesman.log