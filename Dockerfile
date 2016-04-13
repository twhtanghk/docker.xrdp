FROM debian
RUN	apt-get update && \
	apt-get -y install lxde-core xrdp && \
	ln -s /usr/share/doc/xrdp/rsakeys.ini /etc/xrdp && \
	useradd -ms /bin/bash myroot && \
	echo 'myroot:password' |chpasswd
EXPOSE	3389
ENTRYPOINT	/etc/init.d/xrdp start && tail -F /var/log/xrdp-sesman.log